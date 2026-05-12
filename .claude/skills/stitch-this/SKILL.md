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

# Stitch-this

## Purpose
Parses and interviews user input to develop interaction and UI ideas. Outputs an optimised prompt with ready-to-copy references from a memory layer for Google Stitch Studio as a directory in `/stitch-[n]`.

## Usage

**Invoke**: `/stitch-this [idea]` or when user asks to create a Google Stitch prompt. Store input in `[idea]` as `inline_input`.

## Protocol

### **Step 1 - Capture intent** *(model: Haiku)*
Emit `Step 1/10 - checking objective...`

Ask user via `AskUserQuestion`: "What would you like to generate?" with options:
1. An optimised Stitch prompt only — I'll synthesize your brief and extract benchmarking and Pandora references into a ready-to-use Stitch prompt → `mode = prompt`
2. A new screen in Stitch — I'll build actual screens in Stitch from your brief, which you can later find on the Stitch web app → `mode = generate`, `intent = variations`
3. Variations of existing screen(s) in Stitch — I'll generate variants of a screen you already have, which you can later find on the Stitch web app → `mode = generate`, `intent = new`

### **Step 2 - Capture input type** *(skip if `inline_input` is present)* *(model: Sonnet)*
Emit `Step 2/10 - checking for input...`

Ask user via `AskUserQuestion` (multiSelect): "What would you to generate from?" 
1. Text description - single-line input
2. A .md file - from a directory or raw .md file
3. Image references - from a directory or a single image file

Parse selected input type(s) per `refs/input-guide.md`. Generate `parsed_brief` with the six fields defined there. `

### **Step 3 - Capture additional input** *(model: Sonnet)*
Emit `Step 3/10 - checking if you have any other references...`

Ask user via `AskUserQuestion` (multiSelect): "You have entered an idea. Do you want to add more details?" 
1. Revise my initial input
2. Add a .md file
3. Add image references

Parse selected input type(s) per `refs/input-guide.md`. Generate `parsed_brief` with the six fields defined there. `

### **Step 4 - Search, extract, resolve refs** *(model: Sonnet)*
Emit `Step 4/10 - checking memory for references`

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

### **Step 5 — Optimise prompt** *(silent)*
Emit `Step 5/10 - optimising your prompt`

Follow `refs/prompt-guide.md`. Build the prompt from `parsed_brief` using the canonical Stitch structure: `[screen name] for [context]. Shows [components]. Tone: [tone]. Device: [device].`

If `pandora_context` exists, extend the prompt with a `Style:` clause that describes the visual standard extracted from pandora in precise UI terms — layout structure, key component placement, color tone, spacing rhythm. This clause forces Stitch to reproduce the pandora visual language, not invent its own. Example: `Style: single-column card layout, hero banner at top with gradient overlay, CTA pinned to bottom, muted purple palette.`

Strip non-UI content, vague qualifiers, and backend logic per the sanitization checklist. Produce `optimised_prompt`.

### **Step 6 — Validate UI intent** *(silent)*
Emit `Step 6/10 - grading the optimised prompt`
Apply the UI-intent checklist in `refs/prompt-guide.md` to `optimised_prompt`. Pass requires ≥3 yes answers. If the prompt fails, refuse with: "This input describes [observed thing], not a UI screen — please provide a screen description." Exit.

### **Step 7 — Approval gate**
Emit `Step 7/10 - prompt needs approval`

Show `optimised_prompt` to the user in a copyable code block. Ask via `AskUserQuestion`: (1) Approve, (2) Edit prompt, (3) Abort. 
- On Edit: accept the user's revision, re-run Step 5 sanitization on it, return to this gate. 
- On Abort: exit. 
- On Approve: continue.
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
Emit `Step 8/10 - calling Stitch MCP...`
Follow `refs/stitch-tools.md` for tool selection, param shapes, and model selection rules. Branch on `intent`:
- `intent = new` → call `mcp__stitch__generate_screen_from_text`, then `mcp__stitch__generate_variants` on the resulting screen
- `intent = variations` → call `mcp__stitch__generate_variants` directly with `variantOptions`

Pass `deviceType` if inferable from `optimised_prompt` (mobile/desktop/tablet). Default `variantCount` to 3.

**Variant fidelity defaults:** Default `creativeRange` to `REFINE` and `aspects` to `["COLOR_SCHEME", "TEXT_CONTENT", "IMAGES"]`. Never include `LAYOUT` in aspects by default — this preserves the base screen's structure. Only add `LAYOUT` to aspects if the user explicitly asks for layout changes (e.g. "try a different layout", "restructure the screen"). Only use `creativeRange: "EXPLORE"` or `"REIMAGINE"` when the user explicitly requests it.

### **Step 9 — Present variations** *(mode = generate only)*
Emit `Step 9/10 - variations generated!`
Show every generated screen variation inline. Include each variation's screen ID and a one-line description. Show all variations — do not summarise.

For each screen, call `mcp__stitch__get_screen` using the full resource name (`projects/{projectId}/screens/{screenId}`). From the response, emit a link: if the response includes a URL, render it as a markdown link. If not, show the resource path (`projects/{projectId}/screens/{screenId}`) so the user can locate the screen in their Stitch project.

### **Step 10 — Follow-up gate**
Emit `Step 10/10 - session complete`
Ask the user via `AskUserQuestion`: "What would you like to do next?" with options:
1. Regenerate — go back to Step 1 with a clean slate
2. Deep dive into one screen *(mode = generate only)* — ask which screen (by ID or title from Step 9), then jump directly to Step 8 with `intent = variations` and that screen as `selectedScreenIds`; skip Steps 1–7
3. End session — exit

## References

- `refs/input-parsing.md` — Parsing rules per input type; the six parsed_brief fields
- `refs/stitch-tools.md` — Stitch MCP tool names, params, model selection, variant fidelity defaults
- `refs/prompt-guide.md` — Prompt synthesis rules, sanitization checklist, UI-intent checklist, before/after examples
- `refs/stitch-api.md` — Stitch MCP API external documentation and schema reference