# codex-my-workflow

A research-first workflow template for Codex.

## What this project is for

- brainstorming and testing research ideas
- running structured literature reviews
- replicating published papers before extensions
- writing manuscript drafts with reproducible analysis
- producing seminar slides from research outputs (without lowering quality standards)

## Core logic

- global policy: `AGENTS.md`
- runtime workflows: `codex/workflows/`
- reusable playbooks: `codex/skills/`
- specialist review checklists: `codex/agents/`
- execution evidence: `quality_reports/`

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

## Research folders: ideas vs explorations

- `research/explorations/`: messy sandbox for uncertain experiments and dead ends.
  Keep fast prototypes, partial outputs, and learning notes.
- `research/ideas/`: formalized directions worth evaluating as candidate papers.
  Keep a clear question, hypothesis set, identification sketch, and go/no-go decision.

Use explorations first when the question is fuzzy; promote to ideas once the direction is coherent.

## Quick start

### 0. Open the repo and read control files

```bash
cd /Users/zhangjia/git/codex-my-workflow
```

Read these first:

- `AGENTS.md`
- `codex/README.md`

### 1. Choose your research stage

Use the stage workflow that matches your current step:

1. exploration: `codex/workflows/exploration.md`
2. ideation: `codex/workflows/ideation.md`
3. literature review: `codex/workflows/literature-review.md`
4. replication: `codex/workflows/replication-first.md`
5. empirical analysis: `codex/workflows/empirical-analysis.md`
6. manuscript drafting: `codex/workflows/manuscript-draft.md`
7. seminar slides: `codex/workflows/seminar-slides.md`

### 2. Initialize a task workspace (exactly what this means)

"Initialize a task workspace" means: run one scaffold script that creates the folder structure and report stubs for that task.

Exploration:

```bash
bash scripts/codex/new-exploration.sh placebo-tests
```

Creates:

- `research/explorations/exploration_placebo-tests/`
- `quality_reports/session_logs/YYYY-MM-DD_placebo-tests_exploration.md`

Ideation:

```bash
bash scripts/codex/new-ideation.sh labor-market-frictions
```

Creates:

- `research/ideas/idea_labor-market-frictions/`
- `quality_reports/specs/YYYY-MM-DD_labor-market-frictions_ideation.md`
- `quality_reports/session_logs/YYYY-MM-DD_labor-market-frictions_ideation.md`

Literature review:

```bash
bash scripts/codex/new-lit-review.sh minimum-wage-employment
```

Creates:

- `research/literature/lit_review_minimum-wage-employment/`
- `quality_reports/lit_review_minimum-wage-employment.md`
- matching spec + session log stubs in `quality_reports/`

Replication:

```bash
bash scripts/codex/new-replication.sh card-krueger-1994
```

Creates:

- `research/replications/replication_card-krueger-1994/`
- `quality_reports/card-krueger-1994_replication_targets.md`
- `quality_reports/card-krueger-1994_replication_report.md`
- matching spec + session log stubs in `quality_reports/`

### 3. Ask Codex to execute the matching workflow

Prompt pattern:

```text
Follow codex/workflows/<workflow-file>.md for this task.
Use AGENTS.md non-negotiables.
Write outputs to the initialized workspace and quality_reports.
```

Examples:

- exploration: `codex/workflows/exploration.md`
- ideation: `codex/workflows/ideation.md`
- literature review: `codex/workflows/literature-review.md`
- replication: `codex/workflows/replication-first.md`

### 4. Verify and score before completion

Use real checks, then run quality scoring where applicable:

```bash
python scripts/quality_score.py <path-to-r-or-slide-file>
```

Quality gates:

- `< 80`: blocked
- `>= 80`: commit-ready
- `>= 90`: PR-ready
- `>= 95`: excellence

## Notes

- This repository is Codex-native.
- Seminar slides remain fully audited; standards are not reduced for presentation scope.
