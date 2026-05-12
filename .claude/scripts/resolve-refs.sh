#!/usr/bin/env bash
# resolve-refs.sh — tag-match glossary entries against parsed_brief keywords
# Usage: ./scripts/resolve-refs.sh "keyword1" "keyword2" ...
# Output: JSON { "pandora_refs": [...], "benchmarking_refs": [...] }

set -euo pipefail

REFS_ROOT=".claude/skills/stitch-this/refs"
keywords=("$@")

pandora_refs=()
benchmarking_refs=()

# Find all glossary.json files
while IFS= read -r glossary; do
  # For each entry in refs[], score by keyword match against tags
  while IFS= read -r entry; do
    path=$(echo "$entry" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d['path'])")
    tags=$(echo "$entry" | python3 -c "import sys,json; d=json.load(sys.stdin); print(' '.join(d['tags'])).lower()")
    score=0
    for kw in "${keywords[@]}"; do
      kw_lower=$(echo "$kw" | tr '[:upper:]' '[:lower:]')
      if [[ "$tags" == *"$kw_lower"* ]]; then
        score=$((score + 1))
      fi
    done
    if [[ $score -ge 1 ]]; then
      if [[ "$path" == *"/pandora/"* ]]; then
        pandora_refs+=("$path")
      elif [[ "$path" == *"/benchmarking/"* ]]; then
        benchmarking_refs+=("$path")
      fi
    fi
  done < <(python3 -c "
import sys, json
with open('$glossary') as f:
  data = json.load(f)
for ref in data.get('refs', []):
  print(json.dumps(ref))
")
done < <(find "$REFS_ROOT" -name "glossary.json")

# Emit JSON
python3 -c "
import json, sys
pandora = $(printf '%s\n' "${pandora_refs[@]+"${pandora_refs[@]}"}" | python3 -c "import sys,json; lines=[l.strip() for l in sys.stdin if l.strip()]; print(json.dumps(lines))")
benchmarking = $(printf '%s\n' "${benchmarking_refs[@]+"${benchmarking_refs[@]}"}" | python3 -c "import sys,json; lines=[l.strip() for l in sys.stdin if l.strip()]; print(json.dumps(lines))")
print(json.dumps({'pandora_refs': pandora, 'benchmarking_refs': benchmarking}, indent=2))
"