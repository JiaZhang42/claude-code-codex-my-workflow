# Replication-First Workflow

Replicate baseline published results before any extension.

## Scope

- `research/replications/**`
- `scripts/**/*.R`

## Phase 1: Targets

- Inventory the original package and record target values in:
  `quality_reports/<paper>_replication_targets.md`

## Phase 2: Baseline execution

- Match original sample/specification/SE computation exactly.
- Save intermediate artifacts and reproducible scripts.

## Phase 3: Tolerance checks

Default tolerances:

- counts/N: exact
- point estimates: absolute diff < 0.01
- standard errors: absolute diff < 0.05
- significance category: match

Write results to `quality_reports/<paper>_replication_report.md`.

## Phase 4: Extensions

- Only after all baseline targets pass.
- Keep baseline and extension code paths separated.
