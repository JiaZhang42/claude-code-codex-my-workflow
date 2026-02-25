# Codex Workflow Layer

This directory contains the runtime workflow logic for Codex.

## What controls behavior

- `AGENTS.md`: short constitution and routing policy (always loaded)
- `codex/workflows/*.md`: end-to-end execution loops by task type
- `codex/skills/*.md`: reusable playbooks for common tasks
- `codex/agents/*.md`: specialist review checklists

## Task routing

- Ideation/brainstorming: `codex/workflows/research-orchestrator.md` + `codex/skills/idea-sprint.md`
- Literature review: `codex/workflows/literature-review.md`
- Replication: `codex/workflows/replication-first.md`
- Seminar slides from research: `codex/workflows/seminar-slides.md`

## Scaffolding scripts

Use the helpers in `scripts/codex/` to initialize workspaces and report stubs.
