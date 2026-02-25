#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <topic-slug>"
  exit 1
fi

slug="$1"
date_str="$(date +%F)"
base="research/literature/lit_review_${slug}"

mkdir -p "$base"

cat > "$base/papers.md" <<MD
# Papers: ${slug}

| Paper | Year | Method | Data | Main Result | Include? |
|-------|------|--------|------|-------------|----------|
MD

cat > "$base/synthesis.md" <<MD
# Synthesis: ${slug}

## Theoretical Contributions

## Empirical Findings

## Methodological Innovations

## Open Debates

## Gaps and Opportunities

1.
2.
3.
MD

spec="quality_reports/specs/${date_str}_${slug}_lit_review.md"
log="quality_reports/session_logs/${date_str}_${slug}_lit_review.md"
report="quality_reports/lit_review_${slug}.md"
cp templates/requirements-spec.md "$spec"
cp templates/session-log.md "$log"

cat > "$report" <<MD
# Literature Review: ${slug}

**Date:** ${date_str}

## Summary

## Key Papers

## Thematic Organization

## Gaps and Opportunities

## Suggested Next Steps

## BibTeX Entries
MD

echo "Created: $base"
echo "Created spec template: $spec"
echo "Created session log template: $log"
echo "Created report stub: $report"
