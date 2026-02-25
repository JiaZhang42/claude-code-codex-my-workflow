# Replication-First Workflow (Codex)

Core principle: replicate original published results before any extension.

## Phase 1: Inventory and Targets

- Read the paper and replication README.
- Inventory data/scripts/expected outputs.
- Record gold-standard targets (table/figure/value/SE/notes).
- Save targets to `quality_reports/<paper>_replication_targets.md`.

## Phase 2: Translate and Execute

- Match original specification exactly (sample, controls, SE/clustering).
- Do line-by-line translation first; avoid premature improvements.
- Save intermediate objects as RDS.

## Phase 3: Verify Match

Tolerance defaults:

- counts/N: exact
- point estimates: < 0.01
- standard errors: < 0.05
- p-values: same significance category
- percentages: < 0.1 percentage points

If mismatch:

- do not proceed to extensions
- isolate first divergent step
- document investigation and resolution status

Save replication report to `quality_reports/<paper>_replication_report.md`.

## Phase 4: Extend Only After PASS

- After baseline passes all targets, add extensions/robustness analyses.
- Keep baseline and extensions clearly separated.
