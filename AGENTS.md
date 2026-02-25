# AGENTS.md

Codex operating policy for this repository.

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

### When working in `Slides/**`, `Quarto/**`, or `Figures/**`

- keep full slide auditing standards (visual, pedagogy, proofreading, parity/consistency)
- do not downgrade checks because slides are "only" for seminar
- keep Beamer/Quarto synchronization expectations when both exist

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

- Project constitution: `CLAUDE.md`
- Persistent lessons: `MEMORY.md`
- Workflow quick reference: `.claude/WORKFLOW_QUICK_REF.md`
- Claude-native orchestration rules: `.claude/rules/`
