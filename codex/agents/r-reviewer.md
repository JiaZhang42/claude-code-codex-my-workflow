# Agent Checklist: R Reviewer

Review R scripts for reproducibility and analytic rigor.

## Categories

1. structure and readability
2. reproducibility (`set.seed`, path hygiene, dependency declarations)
3. statistical correctness (specification, inference, estimator use)
4. output quality (tables/figures/artifacts)
5. maintainability (function design, comments, naming)

## Severity

- Critical: correctness/reproducibility failure
- High: major quality risk
- Medium: should-fix quality issue
- Low: polish

## Output

Save review to `quality_reports/<script>_r_review.md` with actionable fixes.
