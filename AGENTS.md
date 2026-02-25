# AGENTS.md

Codex operating constitution for this repository.

## Purpose

This is a research-first workflow project.

- primary output: reproducible research and manuscript drafts
- secondary output: seminar slides derived from research

## Non-Negotiables

1. Plan first for non-trivial tasks.
2. Use requirements specs for ambiguous tasks (`quality_reports/specs/`).
3. Verify outputs with real commands before completion.
4. Apply quality gates: 80 commit-ready, 90 PR-ready, 95 excellence.
5. Record decisions/checks/risks in `quality_reports/session_logs/`.
6. Do not revert unrelated user changes.

## Stage Routing

Use stage workflows in `codex/workflows/`:

1. exploration -> `exploration.md`
2. ideation -> `ideation.md`
3. literature review -> `literature-review.md`
4. replication -> `replication-first.md`
5. empirical analysis -> `empirical-analysis.md`
6. manuscript drafting -> `manuscript-draft.md`
7. seminar slides -> `seminar-slides.md`

Use `codex/skills/` for repeatable task playbooks and `codex/agents/` for specialist audits.

## Path Priorities

- `manuscript/**`: argument quality, notation consistency, citation integrity
- `research/**`, `scripts/**/*.R`: reproducibility, tolerance checks, deterministic outputs
- `presentations/**`, `assets/figures/**`: full slide quality audits and render verification
- `quality_reports/**`: factual, auditable logs and reports

## Primary References

- `codex/README.md`
- `MEMORY.md`
- `templates/`
