# AGENTS.md

Codex operating policy for this repository.

Codex-native assets live in `codex/` and are the primary runtime references for Codex.

## Purpose

This project is **research-first**:

- primary output: research manuscript and reproducible analysis
- secondary output: seminar slides derived from the research

Do not weaken audit, verification, or quality standards for seminar scope.

## Global Protocol (Always On)

1. Use a plan-first workflow for non-trivial tasks (multi-file, ambiguous, or high-impact).
2. For ambiguous requests, create a requirements spec in `quality_reports/specs/` using `templates/requirements-spec.md`.
3. Implement changes, then verify outputs with real commands.
4. Apply quality scoring before declaring completion.
5. Record key decisions and verification in `quality_reports/session_logs/`.
6. Preserve existing user changes; never revert unrelated work.

## Codex-Native Asset Loading

When the user requests a workflow, load and follow the corresponding playbook in `codex/skills/` and `codex/workflows/`.

Default orchestrators:

- research tasks: `codex/workflows/research-orchestrator.md`
- literature review tasks: `codex/workflows/literature-review.md`
- replication tasks: `codex/workflows/replication-first.md`
- slide generation from research: `codex/workflows/slides-from-research.md`

Specialist checklists:

- use `codex/agents/*.md` as specialist review protocols
- synthesize findings in `quality_reports/` outputs

Workflow dispatch:

- brainstorming and idea generation -> `codex/skills/research-ideation.md` and `codex/skills/interview-me.md`
- literature review -> `codex/skills/lit-review.md` and `codex/workflows/literature-review.md`
- paper replication -> `codex/workflows/replication-first.md` and `codex/skills/review-r.md`

## Quality Gates

- `< 80`: not ready
- `>= 80`: commit-ready
- `>= 90`: PR/deploy-ready
- `>= 95`: excellence target

Use `python scripts/quality_score.py <file>` when applicable.

## Path-Conditional Behavior

### When working in `manuscript/**`

- prioritize research clarity, notation consistency, citation integrity, and argument structure
- verify render/compile success for edited manuscript artifacts
- ensure claims tied to evidence/code outputs where relevant

### When working in `scripts/**/*.R` or `explorations/**`

- enforce reproducibility (`set.seed()` when stochastic, no hardcoded absolute paths)
- verify scripts execute successfully and expected outputs are produced
- apply research orchestrator style: implement -> verify -> score
- use `codex/skills/review-r.md` and `codex/agents/r-reviewer.md` for structured R audits

### When working in `Slides/**`, `Quarto/**`, or `Figures/**`

- keep full slide auditing standards (visual, pedagogy, proofreading, parity/consistency)
- do not downgrade checks because slides are "only" for seminar
- keep Beamer/Quarto synchronization expectations when both exist
- run the slide audit stack from `codex/skills/`:
  `slide-excellence.md`, `proofread.md`, `visual-audit.md`, `pedagogy-review.md`, and `qa-quarto.md` when relevant

### When working in `quality_reports/**`

- keep logs factual and traceable (decisions, checks, remaining risks)
- use templates from `templates/` for consistent structure

## Roles: Rules vs Skills vs Agents

- **Rules**: policy constraints and behavior standards
- **Skills**: reusable multi-step workflows
- **Agents**: specialized reviewers/executors

When choosing where new instructions belong:

- put durable policy in rules/governance docs
- put repeatable execution recipes in skills/scripts
- put specialist review lenses in agents

## Canonical References

- Codex asset index: `codex/README.md`
- Codex skills: `codex/skills/`
- Codex agent checklists: `codex/agents/`
- Codex workflows: `codex/workflows/`
- Project constitution (legacy Claude + shared policy): `CLAUDE.md`
- Persistent lessons: `MEMORY.md`
- Claude-native references (legacy compatibility): `.claude/WORKFLOW_QUICK_REF.md`, `.claude/rules/`
