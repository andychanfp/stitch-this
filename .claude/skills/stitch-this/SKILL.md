---
name: stitch-this
description: Synthesizes a Stitch-compatible prompt from text, .md briefs, or images; gates on user approval; optionally generates screen variations via Stitch MCP.
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

## Usage

`/stitch-this [idea]` — inline text sets mode = generate, intent = new and skips Step 1.


## Protocol

### **Step 1 — Capture intent**
Emit `Step 1/10 - checking objective...`

Ask user via `AskUserQuestion`: "What would you like to generate?" with options:
1. An optimised Stitch prompt only — I'll synthesize your brief and extract benchmarking and Pandora references into a ready-to-use Stitch prompt → `mode = prompt`
2. A new screen in Stitch — I'll build actual screens in Stitch from your brief, which you can later find on the Stitch web app → `mode = generate`, `intent = variations`
3. Variations of existing screen(s) in Stitch — I'll generate variants of a screen you already have, which you can later find on the Stitch web app → `mode = generate`, `intent = new`

### **Step 2 — Capture input type** 
Emit `Step 2/10 - checking for input...`
If inline input is present, ask via `AskUserQuestion` (multiSelect): "Got your idea ([idea]). Want to add anything to reinforce it?"

Otherwise ask: "What are you working from?"

Present these options:
1. Add more details - single-line input
2. A .md file - from a directory or raw .md file
3. Image references - from a directory or a single image file

Parse all selected inputs per `refs/input-parsing.md`. Produce `parsed_brief` (six fields). Store original text as `raw_input`.

### **Step 3 — Resolve refs** *(model: claude-sonnet-4-6)*
Extract keywords from `parsed_brief.feature_name`, `screen_context`, and `components`. Run:
```
bash scripts/resolve-refs.sh <keywords>
```
Outputs `pandora_refs` and `benchmarking_refs`. Read matched images and analyse per `refs/ref-resolution.md` to produce `pandora_context` and `benchmarking_context`. Emit: `References loaded: <paths or "none">`.
- If `parsed_brief` is missing both `feature_name` and `screen_context` → exit: *"I can't read this input — please name the screen you want."*
- If brief fails UI-intent checklist (`refs/prompt-guide.md`, requires ≥3/5 yes) → exit: *"This describes [thing], not a UI screen — please provide a screen description."*

### **Step 4 - Optimise prompt**  *(silent, model: claude-sonnet-4-6)*
Build `optimised_prompt` from `parsed_brief` per `refs/prompt-guide.md`. Encodes `pandora_context` as a `Style:` clause if present.

### **Step 5 — Approval needed**
Show `optimised_prompt` in a code block. Ask: Approve / Edit / Abort.
- Edit → accept revision, re-run Step 4 sanitization, return here.
- Abort → exit.
- Approve, user chose option 3 → resolve save location:
  - Check if `stitches/` exists in CWD. If yes, use CWD as `save_dir` and skip the prompt.
  - If not, ask via `AskUserQuestion`: "Where should I save this?" — Current folder (`<CWD>`) / Desktop (`~/Desktop`) / Custom path. On Custom: ask user to type the path.
  - Then run:
    ```
    bash scripts/save-stitch.sh new "$save_dir" "$optimised_prompt" \
      "<pandora_refs csv>" "<benchmarking_refs csv>" "<extra_refs csv>"
    ```
    Capture the `STITCH_DIR=<path>` line from script output and store as `stitch_dir` for this session.
  - Emit script output (excluding the `STITCH_DIR=` line), then:
    > Copy the prompt above into [Google Stitch studio](https://stitch.withgoogle.com). Upload the files in `pandora/` and `benchmarking/` manually as references in Stitch.
  Stop.
- Approve, user chose option 1 or 2 → continue to Step 6.

### **Step 6 — Call Stitch MCP**
Follow `refs/stitch-tools.md` for tool selection, param shapes, model selection, and variant defaults.
- User chose option 1 → `mcp__stitch__generate_screen_from_text`, then `mcp__stitch__generate_variants`
- User chose option 2 → `mcp__stitch__generate_variants` with `selectedScreenIds`

### **Step 7 — Present variations**
Call `mcp__stitch__get_screen` for each result using `projects/{projectId}/screens/{screenId}`. Emit each variation with its ID, a URL or resource path. Proceed to step 8.
 
### **Step 8 — Follow-up**
Ask: "What's next?"
1. Generate new screen → Step 1, clean state
2. Deep dive → ask which screen (by ID or title), then run Step 6 as if user chose option 2 with that screen
3. End session → terminate here

### **Step 9 — Refine (deep dive only)**
Ask via `AskUserQuestion` (multiSelect): "How would you like to refine this screen?" — Text direction / Image reference / `.md` file. Allow skip.
 
Parse all selected inputs per `refs/input-parsing.md`. Classify each image or file ref:
- Matches a path under `refs/pandora/` or `refs/benchmarking/` → route to `pandora_refs` or `benchmarking_refs` accordingly
- Anything else (user-supplied file or image) → route to `extra_refs`
Merge parsed inputs into `parsed_brief`, overriding conflicting fields. Re-run Step 4 to produce `refinement_prompt`. Then run:
```
bash scripts/save-stitch.sh refine "$stitch_dir" "$refinement_prompt" \
  "<pandora_refs csv>" "<benchmarking_refs csv>" "<extra_refs csv>"
```
Emit script output. Then run Step 6 → Step 7 with the selected screen as `selectedScreenIds`.

## References

- `refs/input-parsing.md` — Parsing rules per input type; the six parsed_brief fields
- `refs/stitch-tools.md` — Stitch MCP tool names, params, model selection, variant fidelity defaults
- `refs/prompt-guide.md` — Prompt synthesis rules, sanitization checklist, UI-intent checklist, before/after examples
- `refs/stitch-api.md` — Stitch MCP API external documentation and schema reference