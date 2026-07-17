# Macrophage-Associated Markers in Melanoma

TCGA-SKCM RNA-seq analysis of macrophage-related genes.

## Setup
Run: Rscript scripts/02_explore_data.R

## Genes
CD68, CD163, CSF1R, MRC1, C1QA, C1QB, C1QC

## Files
- data/sample_expression.csv: Sample dataset (7 genes x 205 samples)
- scripts/: Data loading and exploration scripts
- output/: Figures and results

## Data Note
The file data/sample_expression.csv is synthetic test data generated for development.
The full analysis will use real TCGA-SKCM RNA-seq data downloaded from public repositories.
