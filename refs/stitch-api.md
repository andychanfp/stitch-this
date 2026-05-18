---
name: Stitch API
description: Stitch MCP API external documentation and schema reference — what the server is, how it's invoked, and which capabilities are exposed
type: reference
---

# Stitch API

## What Stitch is

Stitch is a generative UI design tool from Google. It produces interactive UI screen designs from natural-language prompts. The MCP server exposes Stitch's project, screen, and design-system primitives as callable tools.

## MCP server name

The Stitch MCP server is registered as `stitch`. All tool names are prefixed `mcp__stitch__<tool>`.

## Resource model

Stitch resources are addressable by hierarchical resource names:

| Resource | Format | Example |
|----------|--------|---------|
| Project | `projects/{projectId}` | `projects/4044680601076201931` |
| Screen | `projects/{projectId}/screens/{screenId}` | `projects/4044680601076201931/screens/98b50e2ddc9943efb387052637738f61` |
| Asset (design system) | `assets/{assetId}` | `assets/15996705518239280238` |

Most tool params take the **bare ID** (the part after the last slash), not the full resource name. Exception: `get_project` uses the full prefixed form.

## Tool surface

All tools exposed by the Stitch MCP, grouped by purpose.

### Project tools

| Tool | Purpose |
|------|---------|
| `mcp__stitch__list_projects` | List projects owned by or shared with the user |
| `mcp__stitch__create_project` | Create a new project |
| `mcp__stitch__get_project` | Fetch a project's details and its screens |

### Screen tools

| Tool | Purpose |
|------|---------|
| `mcp__stitch__list_screens` | List screens in a project |
| `mcp__stitch__get_screen` | Fetch one screen's full details |
| `mcp__stitch__generate_screen_from_text` | Create a new screen from a text prompt |
| `mcp__stitch__edit_screens` | Edit existing screens via prompt |
| `mcp__stitch__generate_variants` | Generate variations of existing screens |

### Design system tools

| Tool | Purpose |
|------|---------|
| `mcp__stitch__list_design_systems` | List design systems for a project |
| `mcp__stitch__create_design_system` | Create a new design system |
| `mcp__stitch__update_design_system` | Update an existing design system |
| `mcp__stitch__apply_design_system` | Apply a design system to selected screen instances |

## Enums used in this skill

### `deviceType`

| Value | Use when |
|-------|----------|
| `MOBILE` | Prompt mentions phone, mobile, app, iOS, Android |
| `DESKTOP` | Prompt mentions desktop, web app, browser, dashboard |
| `TABLET` | Prompt explicitly mentions tablet or iPad |
| `AGNOSTIC` | No surface signal in the prompt |

### `creativeRange` (variants)

| Value | Behaviour |
|-------|-----------|
| `REFINE` | Subtle refinements, close to the original |
| `EXPLORE` | Balanced exploration (default) |
| `REIMAGINE` | Radical departure from the original |

### `aspects` (variants — multi-select)

| Value | Varies |
|-------|--------|
| `LAYOUT` | Element arrangement |
| `COLOR_SCHEME` | Colour palette |
| `IMAGES` | Imagery used |
| `TEXT_FONT` | Typography |
| `TEXT_CONTENT` | Copy and labels |

## Latency note

`generate_screen_from_text`, `edit_screens`, and `generate_variants` are long-running — each call takes minutes. **Do not retry on connection error.** A connection failure does not always mean the generation failed; poll with `get_screen` later instead.

## Worked example — full call sequence

Intent: a user with no project ID wants a new mobile checkout screen plus three variations.

```
1. mcp__stitch__list_projects
   → user picks projectId "4044680601076201931"

2. mcp__stitch__generate_screen_from_text
   { projectId: "4044680601076201931",
     prompt: "Checkout screen for a food delivery app. Shows order summary, delivery address, and a confirm-order CTA. Tone: clean and trustworthy. Device: Mobile.",
     deviceType: "MOBILE" }
   → returns screen with id "abc123..."

3. mcp__stitch__generate_variants
   { projectId: "4044680601076201931",
     selectedScreenIds: ["abc123..."],
     prompt: "<same prompt as step 2>",
     variantOptions: { variantCount: 3, creativeRange: "EXPLORE", aspects: ["LAYOUT","COLOR_SCHEME"] },
     deviceType: "MOBILE" }
   → returns 3 variations
```
