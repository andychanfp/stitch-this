#!/usr/bin/env bash
# save-stitch.sh — save a completed stitch artifact to stitches/stitch-<n>/
# Usage: ./scripts/save-stitch.sh "<raw_input>" "<optimised_prompt>" \
#          "<pandora_ref1>,<pandora_ref2>" "<benchmarking_ref1>,<benchmarking_ref2>"
# Output: "Saved to stitches/stitch-<n>/" + tree summary

set -euo pipefail

RAW_INPUT="${1:-}"
OPTIMISED_PROMPT="${2:-}"
PANDORA_REFS="${3:-}"       # comma-separated paths, or empty
BENCHMARKING_REFS="${4:-}"  # comma-separated paths, or empty

if [[ -z "$RAW_INPUT" || -z "$OPTIMISED_PROMPT" ]]; then
  echo "Error: raw_input and optimised_prompt are required." >&2
  exit 1
fi

# Ensure stitches/ exists
mkdir -p stitches

# Next index
n=$(ls -d stitches/stitch-*/ 2>/dev/null | wc -l | tr -d ' ')
n=$((n + 1))
DIR="stitches/stitch-${n}"

# Create base dir (subdirs created on demand below)
mkdir -p "$DIR"

# Write prompt.md
cat > "$DIR/prompt.md" <<EOF
## Raw Input

${RAW_INPUT}

## Optimised Prompt

${OPTIMISED_PROMPT}
EOF

# Copy pandora refs
if [[ -n "$PANDORA_REFS" ]]; then
  mkdir -p "$DIR/pandora"
  IFS=',' read -ra refs <<< "$PANDORA_REFS"
  for ref in "${refs[@]}"; do
    [[ -f "$ref" ]] && cp "$ref" "$DIR/pandora/"
  done
fi

# Copy benchmarking refs
if [[ -n "$BENCHMARKING_REFS" ]]; then
  mkdir -p "$DIR/benchmarking"
  IFS=',' read -ra refs <<< "$BENCHMARKING_REFS"
  for ref in "${refs[@]}"; do
    [[ -f "$ref" ]] && cp "$ref" "$DIR/benchmarking/"
  done
fi

# Emit save confirmation + tree
echo "Saved to ${DIR}/"
find "$DIR" | sed "s|${DIR}||" | sort | while read -r line; do
  [[ -z "$line" ]] && continue
  depth=$(echo "$line" | tr -cd '/' | wc -c)
  indent=$(printf '%*s' $((depth * 2)) '')
  echo "${indent}${line##*/}"
done