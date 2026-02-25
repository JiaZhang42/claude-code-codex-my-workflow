# Research Orchestrator

Default loop for manuscript, code, and analysis work.

## Scope

- `manuscript/**`
- `research/**`
- `scripts/**/*.R`
- `assets/figures/**`

## Loop

1. Plan non-trivial changes.
2. If requirements are ambiguous, run `codex/skills/spec-first.md` and save spec.
3. Implement in small increments.
4. Verify with real commands:
   - script execution
   - render/compile
   - file existence and sanity checks
5. Run specialist audits when relevant:
   - R: `codex/agents/r-reviewer.md`
   - manuscript: `codex/agents/manuscript-reviewer.md`
6. Score quality via `scripts/quality_score.py` where applicable.
7. Log outcomes and residual risks in `quality_reports/session_logs/`.

## Completion criteria

- verification pass
- no unresolved critical defects
- quality score >= 80
