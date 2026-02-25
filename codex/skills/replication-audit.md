# Skill: Replication Audit

Compare reproduced outputs against published targets.

## Checks

- target-by-target tolerance pass/fail
- sample/specification parity
- SE/inference parity
- deterministic reproducibility checks

## Output

`quality_reports/<paper>_replication_report.md` with:

- summary status: REPLICATED / PARTIAL / FAILED
- comparison table (paper vs reproduced vs diff)
- discrepancy investigation notes
- environment metadata (versions, seed policy)
