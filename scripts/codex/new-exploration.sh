#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <exploration-slug>"
  exit 1
fi

slug="$1"
date_str="$(date +%F)"
base="research/explorations/exploration_${slug}"

mkdir -p "$base"/scripts "$base"/output

cat > "$base/README.md" <<MD
# Exploration: ${slug}

## Goal

[What uncertain question are you testing?]

## Current status

IN PROGRESS

## Fast tests

- [ ] Test 1
- [ ] Test 2

## Promotion criteria

- [ ] Question becomes coherent enough for research/ideas/
- [ ] Minimum evidence gathered for go/no-go decision

## Notes

- Started: ${date_str}
MD

log="quality_reports/session_logs/${date_str}_${slug}_exploration.md"
cp templates/session-log.md "$log"

echo "Created: $base"
echo "Created session log template: $log"
