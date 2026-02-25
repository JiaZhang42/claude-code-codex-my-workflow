#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <topic-slug>"
  exit 1
fi

slug="$1"
date_str="$(date +%F)"
base="research/ideas/idea_${slug}"

mkdir -p "$base"/scripts "$base"/output

cat > "$base/README.md" <<MD
# Ideation: ${slug}

## Objective

[Define the research puzzle and why it matters]

## Initial Hypotheses

- [ ] H1:
- [ ] H2:

## Data Candidates

- [ ] Dataset 1
- [ ] Dataset 2

## Next Actions

- [ ] Draft requirements spec
- [ ] Run research ideation workflow
- [ ] Rank candidate questions by feasibility and contribution
MD

spec="quality_reports/specs/${date_str}_${slug}_ideation.md"
log="quality_reports/session_logs/${date_str}_${slug}_ideation.md"
cp templates/requirements-spec.md "$spec"
cp templates/session-log.md "$log"

echo "Created: $base"
echo "Created spec template: $spec"
echo "Created session log template: $log"
