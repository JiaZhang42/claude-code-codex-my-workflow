# Replication-First Workflow

Replicate published baseline before any extension.

## Inputs

- original paper + replication package
- target table/figure values from publication

## Steps

1. Initialize workspace: `bash scripts/codex/new-replication.sh <paper-slug>`.
2. Record targets in `quality_reports/<paper>_replication_targets.md`.
3. Translate baseline scripts exactly (no refactors initially).
4. Run baseline and compare outputs to targets.
5. Apply tolerance checks:
   - counts/N: exact
   - point estimates: abs diff < 0.01
   - standard errors: abs diff < 0.05
   - significance category: match
6. If mismatch, isolate first divergence and document investigation.
7. Only after pass, create extension scripts separated from baseline.

## Common translation traps

- Stata clustering defaults vs R package defaults
- implicit sample filters in original scripts
- fixed-effects absorption differences
- bootstrap settings (reps, seeds, type)

## Deliverables

- `quality_reports/<paper>_replication_targets.md`
- `quality_reports/<paper>_replication_report.md`
- reproducible baseline scripts in `research/replications/replication_<paper>/`

## Exit criteria

- baseline status: REPLICATED
- extension work starts only after baseline pass
