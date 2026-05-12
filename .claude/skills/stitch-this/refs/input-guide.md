---
name: Input guide
description: How to parse each input type into raw_input and extract the six parsed_brief fields
type: reference
---

# Input parsing

Before parsing, store the verbatim user input as `raw_input` based on type:

| Type | raw_input | How to parse |
|------|-----------|--------------|
| `text` | The user's typed text | Extract the six fields directly from the message |
| `md` | File path + raw file content | Read the file with `Read`, then extract the six fields |
| `figma_url` | The Figma URL | Extract `fileKey` and `nodeId` from the URL (convert `-` to `:` in nodeId), call `mcp__plugin_figma_figma__get_design_context`, extract the six fields from the response. Treat as reference — extract intent, do not copy layout verbatim |
| `image` | The image file path | Read with `Read`. Visually analyze to infer the six fields. Treat as reference — extract intent, tone, and component patterns without copying layouts verbatim. There may be more than one file path — read all. |

## Six fields for parsed_brief

| Field | Description |
|-------|-------------|
| `feature_name` | What the screen is for |
| `screen_context` | Where it appears in the app |
| `components` | UI elements present |
| `user_actions` | What the user can do |
| `tone` | Visual/brand register |
| `device_target` | Mobile / desktop / tablet |

Merge across all selected inputs without duplication.
