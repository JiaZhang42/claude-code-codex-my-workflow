# Seminar Slides Workflow

Create seminar slides from manuscript results without lowering standards.

## Inputs

- manuscript draft
- validated figures/tables

## Steps

1. Build story arc: question -> design -> key results -> contribution.
2. Draft slides in `presentations/beamer/` and/or `presentations/quarto/`.
3. Run audit stack:
   - `codex/skills/slide-audit.md`
   - `codex/agents/slide-reviewer.md`
   - `codex/agents/proofreader.md`
4. If dual format, run `codex/agents/parity-checker.md`.
5. Render/compile and verify all assets.
6. Optional: run `codex/skills/adversarial-pass.md` for high-stakes talks.

## Deliverables

- presentation sources
- published render artifacts in `presentations/published/`
- slide audit report in `quality_reports/`

## Exit criteria

- audit critical issues resolved
- render/compile passes
- quality score >= 80
