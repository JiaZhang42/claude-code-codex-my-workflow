# Research Workspace

This directory separates four distinct stages of research work.

## `research/ideas/` (formalized directions)

Use this when an idea is already coherent enough to evaluate as a potential paper.

What lives here:

- one folder per candidate project: `idea_<topic>/`
- crisp research question and contribution claim
- 2-5 candidate hypotheses
- initial identification sketch (not full implementation yet)
- feasibility ranking and go/no-go recommendation

Typical files:

- `README.md` (problem, hypotheses, ranked questions)
- `notes.md` (assumptions, threats, referee concerns)
- optional `scripts/` and `output/` for small feasibility checks

Exit criteria:

- promoted to `research/replications/`, `research/literature/`, or manuscript work
- or archived if not promising

## `research/explorations/` (messy sandbox)

Use this for uncertain experiments where you are still probing what the question is.

What lives here:

- rough prototypes and throwaway scripts
- partial data pulls / quick plots / toy simulations
- competing directions that may be discarded
- learning notes and failed attempts

Typical files:

- `README.md` (current objective and status)
- `scripts/` (rapid experiments)
- `output/` (intermediate artifacts)

Exit criteria:

- promote winning direction to `research/ideas/`
- archive abandoned attempts under `research/explorations/ARCHIVE/`

## `research/literature/`

Structured literature review projects and evidence matrices.

## `research/replications/`

Replication projects with baseline-first discipline and tolerance checks.
