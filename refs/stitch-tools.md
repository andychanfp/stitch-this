---
name: Stitch Tools
description: Stitch MCP tool names, params, and tool-selection rules used by the stitch-generate skill
type: reference
---

# Stitch Tools

## Tool selection

| Intent | First tool | Then |
|--------|-----------|------|
| Generate a new screen | `mcp__stitch__generate_screen_from_text` | `mcp__stitch__generate_variants` on the resulting screen |
| Generate variations of an existing screen | `mcp__stitch__generate_variants` | — |
| File or spec → new screen | `mcp__stitch__generate_screen_from_text` | `mcp__stitch__generate_variants` |
| File or spec → variations | `mcp__stitch__generate_variants` | — |
| Need a project context | `mcp__stitch__list_projects` or `mcp__stitch__get_project` | call generation tool with returned `projectId` |

## Tool reference

### `mcp__stitch__generate_screen_from_text`

Generates one new screen in a project from a text prompt.

| Param | Required | Type | Notes |
|-------|----------|------|-------|
| `projectId` | yes | string | Bare ID, no `projects/` prefix |
| `prompt` | yes | string | The optimised Stitch prompt |
| `deviceType` | no | enum | `MOBILE`, `DESKTOP`, `TABLET`, `AGNOSTIC` |
| `modelId` | no | enum | **Default `GEMINI_3_FLASH`** — see model selection rules below |

Returns: a screen object containing `name` (the screen resource path) and `output_components`.

### `mcp__stitch__generate_variants`

Generates variants of one or more existing screens.

| Param | Required | Type | Notes |
|-------|----------|------|-------|
| `projectId` | yes | string | Bare ID |
| `selectedScreenIds` | yes | string[] | Bare screen IDs, no `screens/` prefix |
| `prompt` | yes | string | The optimised Stitch prompt — what to vary toward |
| `variantOptions` | yes | object | See structure below |
| `deviceType` | no | enum | `MOBILE`, `DESKTOP`, `TABLET`, `AGNOSTIC` |
| `modelId` | no | enum | **Default `GEMINI_3_FLASH`** — see model selection rules below |

`variantOptions` structure:

| Key | Type | Default | Notes |
|-----|------|---------|-------|
| `variantCount` | int | 3 | Range 1–5 |
| `creativeRange` | enum | `EXPLORE` | `REFINE`, `EXPLORE`, `REIMAGINE` |
| `aspects` | enum[] | all | `LAYOUT`, `COLOR_SCHEME`, `IMAGES`, `TEXT_FONT`, `TEXT_CONTENT` |

### `mcp__stitch__get_screen`

Fetches one screen's full details after generation. Used in Step 8 to retrieve a link for each generated screen.

| Param | Required | Type | Notes |
|-------|----------|------|-------|
| `name` | yes | string | Full resource path: `projects/{projectId}/screens/{screenId}` |
| `projectId` | yes | string | Bare project ID |
| `screenId` | yes | string | Bare screen ID |

Returns: screen details. If the response includes a URL field, render it as a markdown link. Otherwise, show the resource path as a plain text locator.

### `mcp__stitch__list_projects`

Lists projects accessible to the user. Use when no `projectId` was provided and the user needs to pick one.

| Param | Required | Type | Notes |
|-------|----------|------|-------|
| `filter` | no | string | `view=owned` (default) or `view=shared` |

### `mcp__stitch__get_project`

Fetches one project's details, including its screens.

| Param | Required | Type | Notes |
|-------|----------|------|-------|
| `name` | yes | string | Format `projects/{projectId}` |

### `mcp__stitch__list_screens`

Lists screens in a project. Use to look up `selectedScreenIds` for `generate_variants`.

| Param | Required | Type | Notes |
|-------|----------|------|-------|
| `projectId` | yes | string | Bare ID |

## Model selection rules

Apply these rules when setting `modelId` on any generation tool:

| Condition | modelId |
|-----------|---------|
| Default (no user signal) | `GEMINI_3_FLASH` |
| User explicitly requests "pro", "high quality", or "high fidelity" | `GEMINI_3_1_PRO` |
| Prompt has 3+ interdependent components, a detailed design system, or pixel-level fidelity required | `GEMINI_3_1_PRO` |
| User explicitly requests "flash" or "fast" | `GEMINI_3_FLASH` |

**Never** use `GEMINI_3_PRO` — it is deprecated.

If the LLM determines Pro is warranted, note the reason to the user before calling: e.g. "Using Pro model for this high-fidelity request."

## ID format rules

- All `projectId` and `screenId` params take **bare IDs** — strip the `projects/` or `screens/` prefix before passing.
- The `name` field on `get_project` is the **only** param that takes the prefixed form (`projects/{id}`).

## Worked example

Intent: generate variations of an existing checkout screen.

```
1. Call mcp__stitch__list_screens with projectId="4044680601076201931"
   → returns [{id: "98b50e2ddc9943efb387052637738f61", title: "Checkout"}, ...]

2. Call mcp__stitch__generate_variants with:
   {
     projectId: "4044680601076201931",
     selectedScreenIds: ["98b50e2ddc9943efb387052637738f61"],
     prompt: "Mobile checkout for food delivery. Order summary, address, confirm CTA. Tone: clean, trustworthy.",
     variantOptions: { variantCount: 3, creativeRange: "REFINE", aspects: ["COLOR_SCHEME", "TEXT_CONTENT", "IMAGES"] },
     deviceType: "MOBILE"
   }
   → returns 3 screen variations
```
