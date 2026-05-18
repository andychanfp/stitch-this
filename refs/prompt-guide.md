---
name: Prompt Guide
description: Rules for synthesizing and sanitizing a Stitch-compatible prompt; includes before/after examples and a sanitization checklist
type: reference
---

# Prompt Guide

## Stitch memory constraint

**Stitch has no memory across API calls.** Every prompt is treated as a fresh request — the model cannot see previous generations. Consequences:

- Every prompt must be **fully self-contained**: include the full screen context, not just the delta.
- Combine layout changes and component changes in one prompt only if unavoidable. When you do, warn the user that regression risk is higher.
- After a successful generation, encourage the user to save a screenshot before iterating — there is no way to roll back to a prior state.

## Canonical structure

Every optimised Stitch prompt must follow this shape:

```
[screen name] for [context]. Shows [components]. Tone: [tone]. Device: [device].
```

| Slot | Required | Source | Example |
|------|----------|--------|---------|
| screen name | yes | `parsed_brief.feature_name` | "Checkout screen" |
| context | yes | `parsed_brief.screen_context` | "food delivery app" |
| components | yes | `parsed_brief.components` | "order summary, delivery address, confirm CTA" |
| tone | no | `parsed_brief.tone` | "clean and trustworthy" |
| device | no | `parsed_brief.device_target` | "Mobile" |

If `tone` or `device` is missing, omit the slot — never invent a value.

## Incremental editing principles

Stitch performs best when prompts are narrow and iterative. Apply these rules when generating the optimised prompt:

1. **One screen per prompt.** Never address multiple screens or views in a single call. Split multi-screen requests into sequential calls.
2. **One or two changes per iteration.** Each prompt should change one thing (e.g. layout) or two closely related things (e.g. layout + colour). Combining unrelated changes causes regression.
3. **Never mix layout changes and component additions.** These interact unpredictably. Sequence them: layout first, then components in the next call.
4. **Name the exact target.** Always name the screen and the specific element being changed. Vague targeting causes Stitch to regenerate unrelated content.
   - ✓ "On the Checkout screen, replace the delivery address field with a map picker."
   - ✗ "Update the address component."

## UI element keyword vocabulary

Use precise, recognisable UI terms rather than generic descriptions. Stitch responds better to standard vocabulary:

| Prefer | Avoid |
|--------|-------|
| "navigation bar" | "top section" |
| "call-to-action button" | "main button" |
| "card layout" | "box thing" |
| "bottom tab bar" | "tabs at the bottom" |
| "hero image" | "big picture at the top" |
| "search bar" | "input for searching" |
| "modal dialog" | "pop-up" |
| "skeleton loader" | "loading state" |

## Colour and tone guidance

- Prefer specific colour names or hex over generic moods alone: "forest green (#2E7D32)" over "green".
- Mood-based palettes are fine as a supplement: "warm, inviting — amber and terracotta tones".
- Coordinate colour requests with imagery requests in the same prompt to avoid mismatched visual style.
- Use adjectives that establish visual tone: "vibrant and encouraging", "minimalist and focused", "bold and high-contrast".

## Sanitization checklist

Apply in order. Each rule has a "before / after" example.

### 1. Strip non-UI content

Remove anything describing backend services, API endpoints, data pipelines, auth flows, or infrastructure.

- **Before:** "Checkout screen that POSTs to /api/charge using OAuth2."
- **After:** "Checkout screen with a confirm button."

### 2. Remove vague qualifiers

Strip: "maybe", "possibly", "general", "various", "some", "etc", "stuff", "things", "kind of", "sort of".

- **Before:** "Maybe show some kind of order summary and various buttons."
- **After:** "Show the order summary and a confirm button."

### 3. Replace adjectives with concrete attributes

Replace generic adjectives (good, nice, modern, beautiful) with specific design attributes.

- **Before:** "A nice modern checkout screen."
- **After:** "A minimalist checkout screen with high-contrast typography and a single primary action."

### 4. Cap length

Target 30–80 words for the full prompt. If over, drop secondary components, not the primary action.

### 5. Resolve conflicts

If the input contains contradictions (e.g. "minimalist with lots of imagery"), pick the dominant signal and drop the other. Note the dropped signal at the approval gate.

## UI-intent checklist

Before calling Stitch, check the optimised prompt against this list. **Pass requires ≥3 yes answers.**

| Check | Example yes | Example no |
|-------|-------------|------------|
| Names a screen or page | "Checkout screen", "User profile page" | "Payment service", "Auth flow" |
| Names visual components | "Order summary card", "CTA button" | "POST endpoint", "OAuth handshake" |
| Implies a user action on screen | "confirm the order", "browse products" | "process payment", "validate token" |
| Has a tone or visual attribute | "clean", "playful", "trustworthy" | "secure", "scalable", "performant" |
| Targets a device or surface | "Mobile", "Desktop", "Tablet" | (no surface mentioned at all is fine — neutral) |

If the prompt fails (≤2 yes), refuse with: "This input describes [observed thing — backend service / data flow / etc.], not a UI screen. Please provide a screen description."

## Worked examples

### Example A — clean .md input

**Input (.md):**
```
# Checkout Screen
A mobile checkout screen for a food delivery app. Shows order summary,
delivery address, and a CTA to confirm the order. Tone: clean and trustworthy.
```

**Parsed brief:**
- feature_name: Checkout Screen
- screen_context: food delivery app
- components: order summary, delivery address, confirm CTA
- tone: clean and trustworthy
- device_target: mobile

**Optimised prompt:**
> "Checkout screen for a food delivery app. Shows order summary, delivery address, and a confirm-order CTA. Tone: clean and trustworthy. Device: Mobile."

### Example B — JSON with backend noise

**Input (.json):**
```json
{
  "feature": "Profile",
  "components": ["avatar", "name", "edit button"],
  "api": {"endpoint": "/users/:id", "method": "GET"},
  "device": "mobile"
}
```

**After sanitization:** drop the `api` field (backend noise), keep `feature`, `components`, `device`.

**Optimised prompt:**
> "Profile screen. Shows avatar, name, and an edit button. Device: Mobile."

### Example C — vague single-line input

**Input:** "make me some sort of nice modern dashboard with various charts"

**After sanitization:** strip "some sort of", "nice", "modern", "various". Replace adjectives with concrete attributes.

**Optimised prompt:**
> "Dashboard screen. Shows a primary metric card and three trend charts. Tone: minimalist with high-contrast typography. Device: Desktop."

If the user input is too thin even after sanitization (e.g. "a screen"), refuse and ask for one of: feature name, primary user action, or one component.
