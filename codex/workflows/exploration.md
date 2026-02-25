# Exploration Workflow

Use for uncertain, early-stage testing where failure is expected.

## Inputs

- rough question or puzzle
- candidate data sources (optional)

## Steps

1. Create workspace: `bash scripts/codex/new-exploration.sh <slug>`.
2. Define 1-2 testable micro-questions in `README.md`.
3. Implement quick tests in `scripts/` (minimal engineering, fast turnaround).
4. Save intermediate outputs to `output/`.
5. Log what failed and why.
6. Decide one of:
   - promote to `research/ideas/idea_<slug>/`
   - keep exploring
   - archive

## Deliverables

- `research/explorations/exploration_<slug>/README.md`
- working prototype scripts and outputs
- session log in `quality_reports/session_logs/`

## Exit criteria

- at least one viable hypothesis path identified, or
- explicit kill decision documented with rationale
