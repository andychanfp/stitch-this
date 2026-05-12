# stitch-this

A Claude Code skill that synthesizes Stitch-compatible prompts from text, `.md` briefs, or images — with an approval gate before generating screens via the [Google Stitch](https://stitch.withgoogle.com) MCP.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/andychanfp/stitch-this/main/install.sh | bash
```

Installs the skill to `~/.claude/skills/stitch-this/` and helper scripts to `~/.claude/scripts/`. Restart Claude Code after installing.

**Requirements:** Claude Code with the [Google Stitch MCP](https://stitch.withgoogle.com) configured.

## Usage

```
/stitch-this [idea]
```

Passing an inline idea skips the intent picker and goes straight to prompt synthesis. Without an argument, the skill walks you through intent, inputs, and options interactively.

**What it does:**

1. Accepts raw intent — text, `.md` brief, or image references
2. Resolves internal Pandora and benchmarking references by keyword
3. Synthesises a canonical Stitch prompt (30–80 words, sanitised)
4. Shows the prompt for your approval before doing anything
5. Calls Stitch MCP to generate a new screen and/or variants
6. Saves the prompt + references locally for your records