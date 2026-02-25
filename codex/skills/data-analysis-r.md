# Skill: Data Analysis (R)

Execute an end-to-end reproducible analysis script.

## Requirements

- libraries declared at top
- single `set.seed()` when stochastic
- no hardcoded absolute paths
- deterministic output paths
- key objects saved as RDS

## Pipeline

1. setup and dependency load
2. data prep and diagnostics
3. estimation/specification
4. output generation (tables/figures/artifacts)
5. verification and scoring

## Verification

- script exits cleanly
- expected outputs exist and are non-empty
- quality score >= 80
