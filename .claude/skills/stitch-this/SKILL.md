---
name: stitch-this
description: Accepts single-line text, .md briefs, or JSON specs; synthesizes and sanitizes a Stitch-compatible prompt; gates on user approval; then calls the Stitch MCP to generate screen variations. Invoke when the user wants to create or vary a UI screen in Stitch from any of these input formats.
model: claude-sonnet-4-6
required-tools:
  - AskUserQuestion
  - Bash
  - Read
  - Write
  - mcp__plugin_figma_figma__get_design_context
  - mcp__stitch__list_projects
  - mcp__stitch__get_project
  - mcp__stitch__list_screens
  - mcp__stitch__get_screen
  - mcp__stitch__generate_screen_from_text
  - mcp__stitch__generate_variants
---

## Usage

**Invoke**: `/stitch-this [idea]` — optionally pass a one-line or multi-line description inline.

- `/stitch-this` with no input → asks what you'd like to do (merged gate)
- `/stitch-this build a food ordering screen` → captures input, proceeds directly to parse
- Natural-language: "generate a Stitch screen", "create Stitch variations", "build a screen in Stitch"
- Context: a `.md` or `.json` file is attached alongside design intent

## Inputs

| Name | Format | Source |
|------|--------|--------|
| inline description | single-line text | user message at invocation |
| design brief | `.md` file | attached or referenced file |
| design spec | `.json` file | attached or referenced file |
| intent selection | user choice at opening gate | "new screen" / "variations" / "I have a file" |
| figma reference | `figma.com` URL | user message at invocation |

## Outputs

| Name | Format | Destination |
|------|--------|-------------|
| optimised prompt | text string shown at approval gate | inline in conversation |
| screen variations | Stitch MCP response | inline in conversation |
| screen links | URL or resource path per screen | inline in conversation |

## Required tools

This skill calls the following tools. Each must be available at runtime.

| Tool | Used in | Purpose |
|------|---------|---------|
| `AskUserQuestion` | Steps 1, 2, 7, 10 | Gate (when no inline input), input gate, approval gate, and follow-up gate |
| `Bash` | Step 3 | Discover glossary.json files under refs/ |
| `Read` | Steps 2, 3 | Load `.md` / `.json` files and glossary + image files |
| `Write` | Step 7 | Create `prompt.md` with raw input and optimised prompt inside `stitch-[n]/` |
| `mcp__plugin_figma_figma__get_design_context` | Step 2 | Fetch structured design context from a Figma URL |
| `mcp__stitch__list_projects` | Step 8 | Pick a project when none provided |
| `mcp__stitch__get_project` | Step 8 | Resolve project context |
| `mcp__stitch__list_screens` | Step 8 | Look up `selectedScreenIds` for variants |
| `mcp__stitch__get_screen` | Step 9 | Fetch screen details and link after generation |
| `mcp__stitch__generate_screen_from_text` | Step 8 | Create a new screen from the optimised prompt |
| `mcp__stitch__generate_variants` | Step 8 | Generate variations of an existing screen |

## Progress emission

Emit `Step X/10 — <message>` only for steps marked **emit**. Steps marked **silent** run without any user-facing output.

| Step | Emit? | Message |
|------|-------|---------|
| 1 | emit | figuring out what you'd like to do... |
| 2 | emit | gathering your inputs... |
| 3 | emit | finding visual references... |
| 4 | silent | — |
| 5 | silent | — |
| 6 | silent | — |
| 7 | emit | ready for your review... |
| 8 | emit | generating your screens... |
| 9 | emit | here are your variations... |
| 10 | emit | what would you like to do next? |

## Step-by-step protocol

**Pre-step — Capture inline input**
On invocation, check whether the user passed any text after the command (one-line or multi-line).
- If yes: store as `inline_input` and `raw_input = inline_input`. Set `mode = generate` and `intent = new`. Skip Step 1 and proceed directly to Step 2.
- If no: `inline_input` is empty. Continue to Step 1.

**Step 1 — Gate** *(skip if inline_input is present)*
Ask the user via `AskUserQuestion`: "What would you like to do?" with options:
1. Generate a new screen — I'll build actual screens in Stitch from your brief
2. Explore variations of an existing screen — I'll generate variants of a screen you already have
3. Generate a prompt only — I'll synthesize your brief into a ready-to-use Stitch prompt, no generation

Store: option 1 → `mode = generate`, `intent = new`; option 2 → `mode = generate`, `intent = variations`; option 3 → `mode = prompt`. Wait for the answer before continuing.

**Step 2 — Parse inputs**
If `inline_input` is present, treat it as the text description — skip the `AskUserQuestion` prompt and go directly to parsing it as `text`.

Otherwise, ask the user via `AskUserQuestion` (multiSelect): "What is your idea?" with options:
1. Text description — a free-form one-liner or paragraph
2. `.md` brief — attach or reference a Markdown file
3. Figma URL — paste a `figma.com` design link
4. Image — attach a screenshot or mockup

Wait for the answer, then parse each selected input type. Before parsing, store the verbatim user input as `raw_input`:
- `text`: `raw_input` = the user's typed text. Extract the six fields directly from the message.
- `md`: `raw_input` = the file path + raw file content. Read the file with `Read`, then extract the six fields.
- `figma_url`: `raw_input` = the Figma URL. Extract `fileKey` and `nodeId` from the URL (convert `-` to `:` in nodeId), call `mcp__plugin_figma_figma__get_design_context`, then extract the six fields from the response. Treat the design as a reference — extract intent, do not copy layout verbatim.
- `image`: `raw_input` = the image file path. Read it with `Read`. Visually analyze to infer the six fields. Treat as reference — extract intent, tone, and component patterns without copying layouts verbatim.

Merge across all selected inputs without duplication. Produce `parsed_brief`: a structured record with these six fields: feature name, screen context, components, user actions, tone, device target.

**Step 3 — Resolve refs**
Silently discover and load reference images that match the parsed brief.

1. Run via Bash: `find .claude/skills/stitch-this/refs -name "glossary.json"` to locate all glossary files under `refs/benchmarking/` and `refs/pandora/`.
2. Read each glossary.json with `Read`. Each file has this shape:
   ```json
   { "refs": [{ "tags": ["..."], "path": "refs/...", "description": "..." }] }
   ```
3. Score every entry: count how many tags match any keyword in `parsed_brief.feature_name`, `screen_context`, or `components` (case-insensitive substring). Keep entries with score ≥ 1.
4. Partition matched entries by source folder:
   - `pandora_refs` — paths under `refs/pandora/` — the **authoritative visual standard**
   - `benchmarking_refs` — paths under `refs/benchmarking/` — competitive context
5. Emit a one-line summary of matched references before loading images. Format: `References loaded: <list of matched file paths, comma-separated>, or "none" if no matches.` Example: `References loaded: refs/pandora/subscriptions/enrolment/enrolment-home.png, refs/benchmarking/grab/enrolment-home.png`
6. Read all matched image files with `Read`. Visually analyze them:
   - From `pandora_refs`: extract precise layout structure, component placement, color usage, typography hierarchy, spacing rhythm, and any interaction patterns. Store this as `pandora_context`. The generated screen MUST reproduce this visual standard at ~99% fidelity — treat it as a pixel-level design spec, not inspiration.
   - From `benchmarking_refs`: extract ideas, patterns, or differentiators that complement or contrast with the pandora reference. Store as `benchmarking_context`.
7. If no pandora match is found, proceed without `pandora_context` — do not block.

**Step 4 — Validate input** *(silent)*
Check `parsed_brief` is non-empty. At minimum, `feature_name` or `screen_context` must be present. If empty or unparseable, refuse with: "I can't read this input — please provide a brief that names what screen you want." Exit.

**Step 5 — Optimise prompt** *(silent)*
Follow `refs/prompt-guide.md`. Build the prompt from `parsed_brief` using the canonical Stitch structure: `[screen name] for [context]. Shows [components]. Tone: [tone]. Device: [device].`

If `pandora_context` exists, extend the prompt with a `Style:` clause that describes the visual standard extracted from pandora in precise UI terms — layout structure, key component placement, color tone, spacing rhythm. This clause forces Stitch to reproduce the pandora visual language, not invent its own. Example: `Style: single-column card layout, hero banner at top with gradient overlay, CTA pinned to bottom, muted purple palette.`

Strip non-UI content, vague qualifiers, and backend logic per the sanitization checklist. Produce `optimised_prompt`.

**Step 6 — Validate UI intent** *(silent)*
Apply the UI-intent checklist in `refs/prompt-guide.md` to `optimised_prompt`. Pass requires ≥3 yes answers. If the prompt fails, refuse with: "This input describes [observed thing], not a UI screen — please provide a screen description." Exit.

**Step 7 — Approval gate**
Show `optimised_prompt` to the user in a copyable code block. Ask via `AskUserQuestion`: (1) Approve, (2) Edit prompt, (3) Abort. On Edit: accept the user's revision, re-run Step 5 sanitization on it, return to this gate. On Abort: exit. On Approve: continue.

- **If mode = prompt:** Run the artifact-saving protocol below, then display the exit message and stop.
- **If mode = generate:** Continue to Step 8.

**Artifact-saving protocol** *(mode = prompt only, runs after user approval)*

1. **Ensure `stitches/` exists:** Run via Bash: `[ -d stitches ] || mkdir stitches`. Silent.
2. **Determine next index:** Run via Bash: `ls -d stitches/stitch-*/ 2>/dev/null | wc -l | tr -d ' '`. The next `n` is that count + 1. Store as `stitch_n`.
3. **Create directory structure:** Run via Bash: `mkdir -p stitches/stitch-${stitch_n}/benchmarking stitches/stitch-${stitch_n}/pandora`. Silent.
4. **Write `prompt.md`:** Use `Write` to create `stitches/stitch-${stitch_n}/prompt.md` with this exact structure:
   ```
   ## Raw Input

   <raw_input verbatim>

   ## Optimised Prompt

   <optimised_prompt verbatim>
   ```
5. **Copy refs:** For each path in `pandora_refs`, run via Bash: `cp "<path>" "stitches/stitch-${stitch_n}/pandora/"`. For each path in `benchmarking_refs`, run via Bash: `cp "<path>" "stitches/stitch-${stitch_n}/benchmarking/"`. If either list is empty, skip silently — do not create empty dirs or error.
6. **Emit:** `Saved to stitches/stitch-${stitch_n}/` followed by a tree summary listing all files written (prompt.md, and any copied refs by folder).

Then display this exit message:
> Great! Copy and paste the prompt above to [Google Stitch studio](https://stitch.withgoogle.com). Your refs have been saved to `stitches/stitch-${stitch_n}/` — upload the files in `pandora/` and `benchmarking/` manually as references in Stitch.

**Step 8 — Call Stitch MCP** *(mode = generate only)*
Follow `refs/stitch-tools.md` for tool selection, param shapes, and model selection rules. Branch on `intent`:
- `intent = new` → call `mcp__stitch__generate_screen_from_text`, then `mcp__stitch__generate_variants` on the resulting screen
- `intent = variations` → call `mcp__stitch__generate_variants` directly with `variantOptions`

Pass `deviceType` if inferable from `optimised_prompt` (mobile/desktop/tablet). Default `variantCount` to 3.

**Variant fidelity defaults:** Default `creativeRange` to `REFINE` and `aspects` to `["COLOR_SCHEME", "TEXT_CONTENT", "IMAGES"]`. Never include `LAYOUT` in aspects by default — this preserves the base screen's structure. Only add `LAYOUT` to aspects if the user explicitly asks for layout changes (e.g. "try a different layout", "restructure the screen"). Only use `creativeRange: "EXPLORE"` or `"REIMAGINE"` when the user explicitly requests it.

**Model selection:** default `modelId` to `GEMINI_3_FLASH` on every Stitch call. Upgrade to `GEMINI_3_1_PRO` only if: (a) the user explicitly requested Pro or high fidelity, or (b) the prompt has 3+ interdependent components or requires pixel-level precision. When upgrading, state the reason before calling. Never use `GEMINI_3_PRO` (deprecated).

**Step 9 — Present variations** *(mode = generate only)*
Show every generated screen variation inline. Include each variation's screen ID and a one-line description. Show all variations — do not summarise.

For each screen, call `mcp__stitch__get_screen` using the full resource name (`projects/{projectId}/screens/{screenId}`). From the response, emit a link: if the response includes a URL, render it as a markdown link. If not, show the resource path (`projects/{projectId}/screens/{screenId}`) so the user can locate the screen in their Stitch project.

**Step 10 — Follow-up gate**
Ask the user via `AskUserQuestion`: "What would you like to do next?" with options:
1. Regenerate — go back to Step 1 with a clean slate
2. Deep dive into one screen *(mode = generate only)* — ask which screen (by ID or title from Step 9), then jump directly to Step 8 with `intent = variations` and that screen as `selectedScreenIds`; skip Steps 1–7
3. End session — exit

## References

- `refs/stitch-tools.md` — Stitch MCP tool names, params, and tool-selection rules
- `refs/prompt-guide.md` — Prompt synthesis rules, sanitization checklist, UI-intent checklist, before/after examples
- `refs/stitch-api.md` — Stitch MCP API external documentation and schema reference
