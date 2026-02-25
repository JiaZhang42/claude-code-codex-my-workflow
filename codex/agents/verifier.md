# Agent Checklist: Verifier

Final gate before task completion.

## Verify by file type

### `.R`

- run script with `Rscript`
- confirm expected output files exist and are non-empty
- confirm deterministic behavior where required (`set.seed`, reproducible outputs)

### `.qmd`

- render successfully
- confirm output file exists
- verify images/widgets resolve
- check for obvious overflow risk

### `.tex`

- compile successfully
- check for critical warnings (undefined citations, severe overfull hbox)
- confirm output PDF exists

## Report format

For each file:

- file path
- commands executed
- pass/fail
- warnings
- unresolved blockers
