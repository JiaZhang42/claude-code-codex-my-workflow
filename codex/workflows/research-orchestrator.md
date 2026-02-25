# Research Orchestrator (Codex)

Default loop for research coding and analysis tasks.

## Trigger Scope

- `scripts/**/*.R`
- `explorations/**`
- `manuscript/**`
- `Figures/**/*.R`

## Loop

1. Plan for non-trivial changes.
2. For ambiguity, draft a requirements spec in `quality_reports/specs/`.
3. Implement incrementally.
4. Verify with real commands.
5. Score quality (`python scripts/quality_score.py <file>` where applicable).
6. Log decisions and checks in `quality_reports/session_logs/`.

## Verification Checklist

- [ ] Scripts run without errors.
- [ ] Required packages loaded at top.
- [ ] No hardcoded absolute paths.
- [ ] `set.seed()` used once when stochastic.
- [ ] Expected outputs are present and non-empty.
- [ ] Tolerance checks pass for replication/simulation outputs.
- [ ] Quality score >= 80.

## Output Discipline

- Specs: `quality_reports/specs/`
- Session logs: `quality_reports/session_logs/`
- Merge reports: `quality_reports/merges/`
