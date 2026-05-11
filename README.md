# Design: stitch-this skill

## Purpose

`stitch-this` is a prompt-synthesis and MCP-orchestration skill for Google Stitch. It accepts raw user intent (single-line text, `.md` brief, or `.json` spec), sanitizes and optimises it into a Stitch-compatible prompt, gates on user approval, and calls the Stitch MCP to generate screen variations.

## Design goals

| Goal | Rationale |
|------|-----------|
| One canonical prompt shape | Stitch quality degrades with free-form or overly long prompts — a fixed structure keeps outputs consistent |
| User in the loop | The approval gate prevents wasted Stitch API calls (each takes minutes) and builds trust |
| Model efficiency by default | Flash (`GEMINI_3_FLASH`) is the default to minimize latency and cost; Pro is available for high-fidelity needs |
| Fail fast on bad input | Early validation (Steps 3 & 5) avoids calling Stitch with un-renderable intent |

## UX flow

```
User message
    │
    ▼
[Step 1] Intent gate ──────────────────────────────────┐
    │ (new screen / variations / file)                  │
    ▼                                                   │
[Step 2] Parse inputs                                   │
    │                                                   │
    ▼                                                   │
[Step 3] Validate — feature name or screen context?     │
    │ fail → refuse + exit                              │
    ▼                                                   │
[Step 4] Optimise prompt (canonical structure)          │
    │                                                   │
    ▼                                                   │
[Step 5] UI-intent checklist (≥3 yes)                   │
    │ fail → refuse + exit                              │
    ▼                                                   │
[Step 6] Approval gate ────────────────────────────────┘
    │ edit → re-sanitise → back to gate
    │ abort → exit
    │ approve ↓
    ▼
[Step 7] Stitch MCP call(s)
    │ new screen → generate_screen_from_text → generate_variants
    │ variations → generate_variants only
    ▼
[Step 8] Present all variations inline
```

## Model selection policy

| Scenario | modelId to use |
|----------|---------------|
| Default (no user signal) | `GEMINI_3_FLASH` |
| User explicitly requests Pro or high-fidelity | `GEMINI_3_1_PRO` |
| Complex prompt: 3+ interdependent screens, rich design system, or pixel-level fidelity required | `GEMINI_3_1_PRO` |

## Prompt shape rationale

```
[screen name] for [context]. Shows [components]. Tone: [tone]. Device: [device].
```

- **Screen name** anchors Stitch to the right UI primitive.
- **Context** prevents generic outputs (e.g. "checkout" vs. "checkout for a food delivery app").
- **Components** give the model a layout contract to respect.
- **Tone** steers visual mood without backend semantics.
- **Device** sets the viewport and density expectations.

Slots `tone` and `device` are omitted rather than invented — fabricated values mislead the model.

## Sanitization decisions

| Rule | Why |
|------|-----|
| Strip backend logic | API endpoints, OAuth flows, and data schemas are non-visual and confuse Stitch |
| Remove vague qualifiers | "maybe", "various", "nice" have no design meaning and add token noise |
| Replace generic adjectives | "good UX" → "single primary CTA, minimal chrome" — concrete attributes produce better layouts |
| Cap at 30–80 words | Prompts over 5 000 characters risk component omission; brevity improves layout coherence |
| One change per iteration | Stitch has no memory across calls — combining multiple changes in one prompt causes regression |

## Incremental editing note

Stitch does not carry state between API calls. Each prompt must be fully self-contained. When the user wants to iterate on an existing screen, the skill should:
1. Re-include the full screen context in every prompt (not just the delta).
2. Target one screen or component at a time.
3. Combine layout changes and component changes only if unavoidable, and note the risk to the user.

## Limitations

- **No memory across calls** — Stitch treats every generation as a fresh request.
- **Long latency** — each Stitch call takes minutes; do not retry on connection error.
- **No render preview** — the skill returns screen IDs and metadata, not rendered images, unless the MCP response includes a URL.
- **Deprecated model** — `GEMINI_3_PRO` is deprecated; never use it.

## Future considerations

- **Edit mode** — surface `mcp__stitch__edit_screens` as a fourth intent path for targeted edits to existing screens.
- **Design system integration** — add Step 0 to check/apply a project's design system before generation.
- **Multi-screen flows** — batch `generate_screen_from_text` calls with a shared design system to produce consistent multi-screen prototypes.
- **Screenshot feedback loop** — after generation, fetch screen details and surface a preview URL before the approval gate.
