#!/usr/bin/env bash
# save-stitch.sh — save or refine a stitch artifact
#
# NEW SESSION:
#   ./scripts/save-stitch.sh new \
#     "<save_dir>" "<optimised_prompt>" \
#     "<pandora_refs_csv>" "<benchmarking_refs_csv>" "<extra_refs_csv>"
#
#   Writes <save_dir>/stitches/stitch-<n>/
#     prompt.md        — optimised prompt
#     DESIGN.md        — copied from refs/DESIGN.md
#     pandora/         — only if pandora refs present
#     benchmarking/    — only if benchmarking or extra refs present
#
# REFINEMENT:
#   ./scripts/save-stitch.sh refine \
#     "<stitch_dir>" "<refinement_prompt>" \
#     "<pandora_refs_csv>" "<benchmarking_refs_csv>" "<extra_refs_csv>"
#
#   Appends to <stitch_dir>/prompt.md:
#     ## Refinement-<n>
#     <refinement_prompt>
#   Copies new refs into existing pandora/ and benchmarking/ subdirs.
#   Extra refs land in benchmarking/ prefixed with "user-ref-".
#
# Outputs: path to stitch dir + tree summary of written files

set -euo pipefail

MODE="${1:-}"
if [[ "$MODE" != "new" && "$MODE" != "refine" ]]; then
  echo "Error: first arg must be 'new' or 'refine'." >&2
  exit 1
fi

SKILL_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DESIGN_SRC="${SKILL_DIR}/refs/DESIGN.md"

# ── Helpers ───────────────────────────────────────────────────────────────────

copy_refs() {
  local csv="$1"
  local dest="$2"
  local prefix="${3:-}"
  [[ -z "$csv" ]] && return
  mkdir -p "$dest"
  IFS=',' read -ra refs <<< "$csv"
  for ref in "${refs[@]}"; do
    ref="$(echo "$ref" | xargs)"
    [[ -z "$ref" ]] && continue
    if [[ -f "$ref" ]]; then
      filename="$(basename "$ref")"
      cp "$ref" "${dest}/${prefix}${filename}"
    else
      echo "Warning: ref not found — ${ref}" >&2
    fi
  done
}

emit_tree() {
  local dir="$1"
  find "$dir" | sort | while read -r line; do
    rel="${line#$dir}"
    [[ -z "$rel" ]] && continue
    depth=$(echo "$rel" | tr -cd '/' | wc -c)
    indent=$(printf '%*s' $((depth * 2)) '')
    echo "${indent}${line##*/}"
  done
}

# ── NEW ───────────────────────────────────────────────────────────────────────

if [[ "$MODE" == "new" ]]; then
  SAVE_DIR="${2:-}"
  OPTIMISED_PROMPT="${3:-}"
  PANDORA_REFS="${4:-}"
  BENCHMARKING_REFS="${5:-}"
  EXTRA_REFS="${6:-}"

  if [[ -z "$SAVE_DIR" || -z "$OPTIMISED_PROMPT" ]]; then
    echo "Error: save_dir and optimised_prompt are required." >&2
    exit 1
  fi

  if [[ ! -f "$DESIGN_SRC" ]]; then
    echo "Error: DESIGN.md not found at ${DESIGN_SRC}" >&2
    exit 1
  fi

  STITCHES_DIR="${SAVE_DIR}/stitches"
  mkdir -p "$STITCHES_DIR"

  n=$(ls -d "${STITCHES_DIR}/stitch-"*/ 2>/dev/null | wc -l | tr -d ' ')
  n=$((n + 1))
  STITCH_DIR="${STITCHES_DIR}/stitch-${n}"
  mkdir -p "$STITCH_DIR"

  printf '%s\n' "$OPTIMISED_PROMPT" > "${STITCH_DIR}/prompt.md"
  cp "$DESIGN_SRC" "${STITCH_DIR}/DESIGN.md"

  copy_refs "$PANDORA_REFS"      "${STITCH_DIR}/pandora"
  copy_refs "$BENCHMARKING_REFS" "${STITCH_DIR}/benchmarking"
  copy_refs "$EXTRA_REFS"        "${STITCH_DIR}/benchmarking" "user-ref-"

  echo "Saved to ${STITCH_DIR}/"
  echo ""
  emit_tree "$STITCH_DIR"
  echo ""
  echo "STITCH_DIR=${STITCH_DIR}"  # caller captures this for session state
fi

# ── REFINE ────────────────────────────────────────────────────────────────────

if [[ "$MODE" == "refine" ]]; then
  STITCH_DIR="${2:-}"
  REFINEMENT_PROMPT="${3:-}"
  PANDORA_REFS="${4:-}"
  BENCHMARKING_REFS="${5:-}"
  EXTRA_REFS="${6:-}"

  if [[ -z "$STITCH_DIR" || -z "$REFINEMENT_PROMPT" ]]; then
    echo "Error: stitch_dir and refinement_prompt are required." >&2
    exit 1
  fi

  if [[ ! -d "$STITCH_DIR" ]]; then
    echo "Error: stitch dir not found — ${STITCH_DIR}" >&2
    exit 1
  fi

  PROMPT_FILE="${STITCH_DIR}/prompt.md"

  # Count existing refinements to get next n
  r=$(grep -c '^## Refinement-' "$PROMPT_FILE" 2>/dev/null || true)
  r=$((r + 1))

  printf '\n## Refinement-%d\n\n%s\n' "$r" "$REFINEMENT_PROMPT" >> "$PROMPT_FILE"

  copy_refs "$PANDORA_REFS"      "${STITCH_DIR}/pandora"
  copy_refs "$BENCHMARKING_REFS" "${STITCH_DIR}/benchmarking"
  copy_refs "$EXTRA_REFS"        "${STITCH_DIR}/benchmarking" "user-ref-"

  echo "Updated ${STITCH_DIR}/"
  echo ""
  emit_tree "$STITCH_DIR"
fi