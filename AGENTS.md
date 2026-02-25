# AGENTS.md

Codex operating policy for this repository.

## Purpose

This project is research-first:

- primary output: manuscript-quality research and reproducible analysis
- secondary output: seminar slides derived from research outputs

Do not lower verification or audit standards for seminar scope.

## Non-Negotiables

1. Plan first for non-trivial tasks.
2. For ambiguity, write a requirements spec in `quality_reports/specs/` from `templates/requirements-spec.md`.
3. Verify with real commands before completion.
4. Apply quality gates (`80/90/95`) and block outcomes below 80.
5. Log decisions, checks, and residual risks in `quality_reports/session_logs/`.
6. Never revert unrelated user changes.

## Workflow Routing

Use Codex-native assets in `codex/` as primary runtime references.

- research coding/analysis: `codex/workflows/research-orchestrator.md`
- brainstorming/ideation: `codex/skills/research-ideation.md`, `codex/skills/interview-me.md`
- literature review: `codex/workflows/literature-review.md`, `codex/skills/lit-review.md`
- replication: `codex/workflows/replication-first.md`, `codex/skills/review-r.md`
- slides from research: `codex/workflows/slides-from-research.md`

Use `codex/agents/*.md` as specialist review checklists.

## Path-Conditional Priorities

- `manuscript/**`: argument clarity, notation consistency, citation integrity, render/compile verification
- `scripts/**/*.R`, `explorations/**`, `Figures/**/*.R`: reproducibility, execution success, tolerance checks, quality scoring
- `Slides/**`, `Quarto/**`, `Figures/**`: full slide audits (visual, pedagogy, proofreading, parity), no standard downgrade
- `quality_reports/**`: factual, auditable reporting using `templates/`

## Canonical References

- Codex index: `codex/README.md`
- Codex workflows: `codex/workflows/`
- Codex skills: `codex/skills/`
- Codex agent checklists: `codex/agents/`
- Shared project context: `CLAUDE.md`, `MEMORY.md`
- Legacy Claude references: `.claude/rules/`, `.claude/WORKFLOW_QUICK_REF.md`
