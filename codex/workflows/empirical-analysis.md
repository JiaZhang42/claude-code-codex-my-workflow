# Empirical Analysis Workflow

Run structured, reproducible estimation work after idea/literature/replication stages.

## Inputs

- research question and estimand
- cleaned or raw data

## Steps

1. Define estimand, identification assumptions, and main specification.
2. Implement analysis script(s) in `scripts/R/`.
3. Generate outputs:
   - core tables
   - core figures
   - robustness checks
4. Save reusable objects as RDS.
5. Run `codex/agents/r-reviewer.md` and fix critical/high issues.
6. Verify outputs and run quality scoring.

## Deliverables

- scripts in `scripts/R/`
- figures in `assets/figures/`
- reproducible artifacts in project output paths
- session logs with command evidence

## Exit criteria

- main and robustness specs run cleanly
- outputs are reproducible and interpretation-ready
