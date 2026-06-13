#!/usr/bin/env bash
# Verify every top-level skill directory contains the required four files.
# Required files:
#   SKILL.md
#   README.md
#   evals/evals.json
#   references/examples.md
#
# Top-level directories that are NOT skills:
#   .git
#   .github
#   evals
#   references
#   scripts

set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

ignore_dirs=(".git" ".github" "evals" "references" "scripts")

is_ignored() {
  local name="$1"
  for d in "${ignore_dirs[@]}"; do
    if [[ "$d" == "$name" ]]; then
      return 0
    fi
  done
  return 1
}

required_files=(
  "SKILL.md"
  "README.md"
  "evals/evals.json"
  "references/examples.md"
)

fail=0
checked=0

for entry in */; do
  name="${entry%/}"
  if is_ignored "$name"; then
    continue
  fi

  checked=$((checked + 1))
  for rf in "${required_files[@]}"; do
    target="$name/$rf"
    if [[ ! -f "$target" ]]; then
      echo "::error file=$target::missing required file in skill '$name'"
      fail=1
    fi
  done
done

if [[ "$checked" -eq 0 ]]; then
  echo "::error::no skill directories found at repo root"
  exit 1
fi

if [[ "$fail" -ne 0 ]]; then
  echo "skill structure check failed"
  exit 1
fi

echo "skill structure check passed for $checked skill directories"
