# codex-my-workflow

A research-first workflow template for Codex.

## What this project is for

- Brainstorming and testing research ideas
- Running structured literature reviews
- Replicating published papers before extensions
- Writing manuscript drafts with reproducible analysis
- Producing seminar slides from research outputs (without lowering quality standards)

## Core logic

- Global policy lives in `AGENTS.md` (short constitution)
- Runtime workflows live in `codex/workflows/`
- Reusable playbooks live in `codex/skills/`
- Specialist review checklists live in `codex/agents/`
- Evidence of work lives in `quality_reports/`

## Folder structure

```text
codex-my-workflow/
├── AGENTS.md
├── MEMORY.md
├── codex/
│   ├── workflows/
│   ├── skills/
│   └── agents/
├── manuscript/
│   ├── main/
│   ├── appendix/
│   └── output/
├── research/
│   ├── ideas/
│   ├── literature/
│   ├── replications/
│   └── explorations/
├── presentations/
│   ├── beamer/
│   ├── quarto/
│   └── published/
├── assets/
│   ├── bibliography/references.bib
│   ├── figures/
│   └── preambles/
├── scripts/
│   ├── codex/
│   ├── quality_score.py
│   └── sync_presentations.sh
├── quality_reports/
│   ├── specs/
│   ├── session_logs/
│   ├── plans/
│   └── merges/
└── templates/
```

## Quick start

1. Open this folder in Codex.
2. Read `AGENTS.md` and `codex/README.md`.
3. Initialize a task workspace:
   - `scripts/codex/new-ideation.sh <topic-slug>`
   - `scripts/codex/new-lit-review.sh <topic-slug>`
   - `scripts/codex/new-replication.sh <paper-slug>`
4. Ask Codex to run the corresponding workflow in `codex/workflows/`.

## Standard quality gates

- `< 80`: blocked
- `>= 80`: commit-ready
- `>= 90`: PR-ready
- `>= 95`: excellence

Use `python scripts/quality_score.py <path-to-file>` where applicable.

## Notes

- This repository is Codex-native. Claude-specific runtime files have been removed.
- Seminar slides remain fully audited; standards are not reduced for presentation scope.
