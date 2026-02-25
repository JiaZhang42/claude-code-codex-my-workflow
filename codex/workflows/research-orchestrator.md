# Research Orchestrator

Default loop for coding, analysis, and manuscript-support work.

## Scope

- `manuscript/**`
- `scripts/**/*.R`
- `research/**`
- `assets/figures/**`

## Loop

1. Plan for non-trivial or multi-file changes.
2. If ambiguity exists, write a requirements spec in `quality_reports/specs/`.
3. Implement in small verified increments.
4. Execute verification commands (run code, check outputs, compile if needed).
5. Score quality using `scripts/quality_score.py` for `.R`, `.qmd`, `.tex` targets.
6. Record decisions, checks, and unresolved risks in `quality_reports/session_logs/`.

## Completion gate

- Block completion if score < 80 or verification fails.
