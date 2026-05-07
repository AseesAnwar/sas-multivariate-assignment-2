# Multivariate Analysis  - SAS Project

This repository contains the SAS programs and supporting documentation for a multivariate analysis assignment. The work covers Hotelling's T-square tests, simultaneous confidence intervals, two-sample t-tests, and principal component analysis (PCA).

## Project Contents

- `programs/00_run_all.sas` - master script that runs all analysis programs.
- `programs/01_wbc_hotelling_and_pca.sas` - WBC diseased vs non-diseased analysis.
- `programs/02_twin_hotelling.sas` - paired Hotelling's T-square analysis for twin data.
- `programs/03_thc_pca.sas` - PCA for THC chemical variables.
- `data/` - place the required CSV datasets here.
- `docs/multivariate-analysis-assignment-2.docx` - original assignment write-up.
- `results/assignment-results-summary.md` - short summary of the main statistical findings.
- `outputs/` - optional folder for exported SAS results.

## Required Data Files

The SAS programs expect these files in the `data/` folder:

- `Dataset WBC.csv`
- `Dataset TWIN.csv`
- `Dataset THC.csv`

The original assignment referenced SAS Studio paths such as `/home/u64477816/Dataset WBC.csv`. These programs use relative project paths so the code can run after cloning the repository.

## How To Run

1. Open SAS Studio, SAS OnDemand, or a local SAS session.
2. Upload or place the three CSV files in `data/`.
3. Update the `project_root` macro variable in `programs/00_run_all.sas` if needed.
4. Run `programs/00_run_all.sas`.

You can also run each program separately if you only want one section of the assignment.

## Analysis Overview

Question 1 compares diseased and non-diseased WBC groups using group summaries, covariance and correlation matrices, Hotelling's T-square test, individual t-tests, and confidence intervals.

Question 2 performs PCA separately for diseased and non-diseased WBC groups, including eigenvalues, explained variance, component retention checks, and confidence intervals for leading eigenvalues.

Question 3 uses paired differences from the twin dataset and tests whether the multivariate mean difference vector is zero.

Question 4 summarises THC chemical measurements and uses PCA to reduce 13 chemical variables to a smaller set of meaningful principal components.

## Notes

Datasets are not included in this folder because they were not present with the supplied Word document. Add them to `data/` before running the SAS scripts.

