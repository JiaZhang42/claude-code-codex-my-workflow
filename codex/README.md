# Codex Workflow Layer

This directory contains the runtime logic for Codex in this repository.

## How to use this layer

1. `AGENTS.md` sets non-negotiables and routing.
2. Select a stage workflow in `codex/workflows/`.
3. Use supporting skills in `codex/skills/`.
4. Run specialist audits with `codex/agents/`.
5. Save evidence in `quality_reports/`.

## Stage workflows

1. `exploration.md`
2. `ideation.md`
3. `literature-review.md`
4. `replication-first.md`
5. `empirical-analysis.md`
6. `manuscript-draft.md`
7. `seminar-slides.md`

## Skills and agents

- Skills are execution playbooks.
- Agents are review checklists.
- Both are Codex-native references, not Claude runtime artifacts.
