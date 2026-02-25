#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <paper-slug>"
  exit 1
fi

slug="$1"
date_str="$(date +%F)"
base="research/replications/replication_${slug}"

mkdir -p "$base"/{data,code,output,notes}

cat > "$base/README.md" <<MD
# Replication: ${slug}

## Objective

Replicate original published results before any extension.

## Source Paper

- Citation:
- Replication package location:
- Original language/toolchain:

## Status

- [ ] Targets inventoried
- [ ] Baseline translated
- [ ] Baseline matches within tolerance
- [ ] Extension phase started
MD

targets="quality_reports/${slug}_replication_targets.md"
report="quality_reports/${slug}_replication_report.md"
spec="quality_reports/specs/${date_str}_${slug}_replication.md"
log="quality_reports/session_logs/${date_str}_${slug}_replication.md"

cp templates/requirements-spec.md "$spec"
cp templates/session-log.md "$log"

cat > "$targets" <<MD
# Replication Targets: ${slug}

| Target | Table/Figure | Value | SE/CI | Notes |
|--------|-------------|-------|-------|-------|
MD

cat > "$report" <<MD
# Replication Report: ${slug}

**Date:** ${date_str}

## Summary

- Targets checked:
- Passed:
- Failed:
- Overall: REPLICATED / PARTIAL / FAILED

## Results Comparison

| Target | Paper | Ours | Diff | Status |
|--------|-------|------|------|--------|

## Discrepancies

## Environment

- R version:
- Key packages:
- Data source:
MD

echo "Created: $base"
echo "Created targets file: $targets"
echo "Created report stub: $report"
echo "Created spec template: $spec"
echo "Created session log template: $log"
