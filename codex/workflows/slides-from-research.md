# Slides-From-Research Workflow (Codex)

Use research outputs as source material for seminar slides while preserving full audit rigor.

## Inputs

- manuscript draft (`manuscript/main/*`)
- analysis outputs (`scripts/R/*`, `Figures/*`, `output/*`)
- bibliography (`Bibliography_base.bib`)

## Steps

1. Draft slide skeleton in `Slides/` or `Quarto/`.
2. Preserve notation consistency with manuscript.
3. Verify Beamer/Quarto parity if both versions exist.
4. Run comprehensive audits:
   - `codex/skills/slide-excellence.md`
   - `codex/skills/proofread.md`
   - `codex/skills/visual-audit.md`
   - `codex/skills/pedagogy-review.md`
5. For Quarto conversions, run:
   - `codex/skills/translate-to-quarto.md`
   - `codex/skills/qa-quarto.md`
6. Verify render/compile and deployment artifacts.

## Non-Negotiable

Do not downgrade standards because slides are for seminar. Overflow, notation fidelity, citations, and parity checks remain mandatory.
