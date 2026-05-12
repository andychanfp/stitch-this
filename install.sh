#!/usr/bin/env bash
# install.sh — install stitch-this as a global Claude Code skill
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/andychanfp/stitch-this/main/install.sh | bash

set -euo pipefail

REPO="andychanfp/stitch-this"
BRANCH="main"
SKILL_NAME="stitch-this"

SKILL_DEST="${HOME}/.claude/skills/${SKILL_NAME}"

TMP_DIR="$(mktemp -d)"
cleanup() { rm -rf "$TMP_DIR"; }
trap cleanup EXIT

echo "Installing ${SKILL_NAME}..."

curl -fsSL "https://github.com/${REPO}/archive/refs/heads/${BRANCH}.tar.gz" \
  | tar -xz -C "$TMP_DIR" --strip-components=1

mkdir -p "$SKILL_DEST"

cp -r "${TMP_DIR}/.claude/skills/${SKILL_NAME}/." "$SKILL_DEST/"
chmod +x "$SKILL_DEST/scripts/"*.sh

echo ""
echo "Installed:"
echo "  Skill   → ${SKILL_DEST}"
echo ""
echo "Restart Claude Code, then run: /stitch-this"
