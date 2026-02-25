# Codex-Native Workflow Assets

This directory ports relevant Claude workflow assets into Codex-native playbooks.

## How Codex Uses These Assets

Codex does not auto-run `.claude/skills/*` or `.claude/agents/*`.
Instead, Codex uses:

- `AGENTS.md` for global policy and path-conditional behavior
- `codex/skills/*.md` for workflow playbooks
- `codex/agents/*.md` for specialist review checklists
- `codex/workflows/*.md` for end-to-end orchestrator loops
- `scripts/codex/*` for repeatable project scaffolding

## Ported Skills

All relevant skills from `.claude/skills/` are mirrored in `codex/skills/`:

- commit, compile-latex, context-status, create-lecture
- data-analysis, deploy, devils-advocate, extract-tikz
- interview-me, learn, lit-review, pedagogy-review
- proofread, qa-quarto, research-ideation, review-paper
- review-r, slide-excellence, translate-to-quarto
- validate-bib, visual-audit

## Ported Agents

All relevant agents from `.claude/agents/` are mirrored in `codex/agents/`:

- beamer-translator, domain-reviewer, pedagogy-reviewer
- proofreader, quarto-critic, quarto-fixer
- r-reviewer, slide-auditor, tikz-reviewer, verifier

## Research-First Workflows

Use these orchestrator docs:

- `codex/workflows/research-orchestrator.md`
- `codex/workflows/literature-review.md`
- `codex/workflows/replication-first.md`
- `codex/workflows/slides-from-research.md`

## Quick Start

1. Create a scoped workspace with one of:
   - `scripts/codex/new-ideation.sh <topic-slug>`
   - `scripts/codex/new-lit-review.sh <topic-slug>`
   - `scripts/codex/new-replication.sh <paper-slug>`
2. Ask Codex to execute the corresponding workflow in `codex/workflows/`.
3. Require outputs in `quality_reports/` and run verification/quality gates.
