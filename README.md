# Macrophage Subtyping in Melanoma

## Research Question
Can macrophage phenotypes (M0, M1, M2) be identified in melanoma tumor samples using expression of subtype-specific gene markers?

## Dynamic Dashboard
The main deliverable is an interactive web dashboard:

**Open: https://YannieeXu.github.io/melanoma_macrophage_markers/**

### Features
- **Dynamic data upload**: upload your own expression CSV and all plots update automatically
- **M0/M1/M2 subtyping**: each sample is classified by enrichment score
  - M0: F4/80 (ADGRE1)
  - M1: CD80, CD86, HLA-DRA, HLA-DRB1, NOS2
  - M2: CD206 (MRC1), ARG1
- **PCA plot**: samples colored by macrophage subtype
- **Enrichment boxplot**: M0/M1/M2 score distributions
- **Heatmap**: M0/M1/M2 enrichment by sample
- **Summary table**: subtype counts and percentages

## Dataset
- Source: TCGA-SKCM (The Cancer Genome Atlas)
- Source URL: https://www.cbioportal.org/ (TCGA-SKCM RNA-seq v2)
- Samples: 472 tumor samples
- Genes: 14 macrophage-related genes
- Data type: RNA-seq normalized expression counts

## Repository Structure
`
melanoma_macrophage_markers/
+-- index.html                      # Dynamic dashboard (main deliverable)
+-- data/sample_expression.csv      # Expression data (14 genes x 472 samples)
+-- dashboard.Rmd                   # Previous static dashboard (reference)
+-- dashboard.html                  # Previous static dashboard (reference)
+-- environment.yml                 # Conda environment
+-- README.md
+-- .gitignore
`

## How to Run Locally
Open index.html in any web browser. No server needed.

## Results
1. M0, M1, and M2 macrophage phenotypes were identified across 472 TCGA-SKCM samples.
2. Each sample was assigned to the subtype with the highest enrichment score.
3. PCA shows expression structure across the 14-gene panel.
4. The dynamic dashboard allows re-analysis with user-provided data.

## Methods
- JavaScript-based analysis runs entirely in the browser (no server needed)
- PCA: SVD via numeric.js
- Enrichment score: mean expression of each gene set per sample
- Visualization: Plotly.js

## Acknowledgments
Based on TCGA-SKCM data from The Cancer Genome Atlas (cancer.gov/tcga)
