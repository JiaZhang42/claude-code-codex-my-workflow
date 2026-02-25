# Ideation Workflow

Convert a promising direction into a candidate research project.

## Inputs

- promoted exploration notes or direct topic prompt
- optional prior literature references

## Steps

1. Create workspace: `bash scripts/codex/new-ideation.sh <topic-slug>`.
2. Write one-sentence research question and contribution claim.
3. Generate 3-5 candidate questions (descriptive -> causal -> mechanism/policy).
4. For each candidate, specify:
   - hypothesis
   - identification strategy
   - required data
   - key threats and mitigations
5. Rank candidates by feasibility and contribution.
6. Select one lead direction and define immediate next actions.

## Deliverables

- `research/ideas/idea_<topic>/README.md`
- `quality_reports/research_ideation_<topic>.md`
- spec/log files in `quality_reports/`

## Exit criteria

- lead direction selected with plausible identification + data path
