#!/usr/bin/env bash
# save-stitch.sh — save a completed stitch artifact
# Usage: ./scripts/save-stitch.sh \
#          "<save_dir>"              \  # resolved by caller (CWD, desktop, or custom)
#          "<optimised_prompt>"      \
#          "<pandora_refs_csv>"      \  # comma-separated paths, or empty
#          "<benchmarking_refs_csv>"
#
# Writes:
#   <save_dir>/stitches/stitch-<n>/
#     prompt.md
#     DESIGN.md
#     pandora/         (only if refs present)
#     benchmarking/    (only if refs present)
#
# Outputs: path to created stitch-<n>/ + tree summary

set -euo pipefail

SKILL_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DESIGN_SRC="${SKILL_DIR}/refs/DESIGN.md"

SAVE_DIR="${1:-}"
OPTIMISED_PROMPT="${2:-}"
PANDORA_REFS="${3:-}"
BENCHMARKING_REFS="${4:-}"

# ── Validate ─────────────────────────────────────────────────────────────────
if [[ -z "$SAVE_DIR" || -z "$OPTIMISED_PROMPT" ]]; then
  echo "Error: save_dir and optimised_prompt are required." >&2
  exit 1
fi

if [[ ! -f "$DESIGN_SRC" ]]; then
  echo "Error: DESIGN.md not found at ${DESIGN_SRC}" >&2
  exit 1
fi

# ── Ensure stitches/ exists ───────────────────────────────────────────────────
STITCHES_DIR="${SAVE_DIR}/stitches"
mkdir -p "$STITCHES_DIR"

# ── Next stitch-[n] index ─────────────────────────────────────────────────────
n=$(ls -d "${STITCHES_DIR}/stitch-"*/ 2>/dev/null | wc -l | tr -d ' ')
n=$((n + 1))
STITCH_DIR="${STITCHES_DIR}/stitch-${n}"
mkdir -p "$STITCH_DIR"

# ── Write prompt.md ───────────────────────────────────────────────────────────
printf '%s\n' "$OPTIMISED_PROMPT" > "${STITCH_DIR}/prompt.md"

# ── Copy DESIGN.md ────────────────────────────────────────────────────────────
cp "$DESIGN_SRC" "${STITCH_DIR}/DESIGN.md"

# ── Copy pandora refs ─────────────────────────────────────────────────────────
if [[ -n "$PANDORA_REFS" ]]; then
  mkdir -p "${STITCH_DIR}/pandora"
  IFS=',' read -ra refs <<< "$PANDORA_REFS"
  for ref in "${refs[@]}"; do
    ref="$(echo "$ref" | xargs)"
    [[ -f "$ref" ]] && cp "$ref" "${STITCH_DIR}/pandora/" || \
      echo "Warning: pandora ref not found — ${ref}" >&2
  done
fi

# ── Copy benchmarking refs ────────────────────────────────────────────────────
if [[ -n "$BENCHMARKING_REFS" ]]; then
  mkdir -p "${STITCH_DIR}/benchmarking"
  IFS=',' read -ra refs <<< "$BENCHMARKING_REFS"
  for ref in "${refs[@]}"; do
    ref="$(echo "$ref" | xargs)"
    [[ -f "$ref" ]] && cp "$ref" "${STITCH_DIR}/benchmarking/" || \
      echo "Warning: benchmarking ref not found — ${ref}" >&2
  done
fi

# ── Emit summary ──────────────────────────────────────────────────────────────
echo "Saved to ${STITCH_DIR}/"
echo ""
find "$STITCH_DIR" | sort | while read -r line; do
  rel="${line#$STITCH_DIR}"
  [[ -z "$rel" ]] && continue
  depth=$(echo "$rel" | tr -cd '/' | wc -c)
  indent=$(printf '%*s' $((depth * 2)) '')
  echo "${indent}${line##*/}"
done
