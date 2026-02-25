# Literature Review Workflow

Produce an auditable synthesis that drives research decisions.

## Inputs

- topic or research question
- local papers in `supporting_docs/papers/` (if available)
- bibliography in `assets/bibliography/references.bib`

## Steps

1. Initialize workspace: `bash scripts/codex/new-lit-review.sh <topic-slug>`.
2. Define screening protocol:
   - inclusion/exclusion criteria
   - publication window
   - quality thresholds
3. Build evidence matrix using `codex/skills/literature-matrix.md`.
4. Synthesize by theme:
   - theory
   - empirics
   - methods
   - unresolved disagreements
5. Extract 3-5 gaps and convert to testable opportunities.
6. Update bibliography with validated missing references.

## Deliverables

- `research/literature/lit_review_<topic>/papers.md`
- `research/literature/lit_review_<topic>/synthesis.md`
- `quality_reports/lit_review_<topic>.md`

## Exit criteria

- synthesis yields explicit next-step research hypotheses
- citation confidence and uncertainty are clearly marked
