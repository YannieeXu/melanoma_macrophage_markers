# Macrophage Subtyping in Melanoma

## Research Question
Can macrophage phenotypes (M0, M1, M2) be identified in melanoma tumor samples using expression of subtype-specific gene markers?

## Dynamic Dashboard
The main deliverable is an interactive web dashboard:

**Open: https://YannieeXu.github.io/melanoma_macrophage_markers/**

### Features
- **Dynamic data upload**: upload your own expression CSV and all plots update automatically
- **M0/M1/M2 subtyping**: each sample is classified by enrichment score
  - **M0 (11 genes)**: F4/80 (ADGRE1), CD68, CSF1R, CD14, ITGAM, CD33, FCGR1A, MSR1, C1QA, C1QB, C1QC
  - **M1 (15 genes)**: CD80, CD86, HLA-DRA, HLA-DRB1, NOS2, TNF, IL1B, IL6, CXCL9, CXCL10, CXCL11, CCR7, STAT1, IL12A, IL12B
  - **M2 (12 genes)**: CD206 (MRC1), ARG1, CD163, IL10, TGFB1, CCL18, CCL22, FOLR2, TGM2, STAT6, IRF4, PPARG
- **PCA plot**: samples colored by macrophage subtype
- **Enrichment boxplot**: M0/M1/M2 score distributions
- **Heatmap**: M0/M1/M2 enrichment by sample
- **Summary table**: subtype counts and percentages

## Dataset
- Source: TCGA-SKCM (The Cancer Genome Atlas)
- Source URL: https://www.cbioportal.org/ (TCGA-SKCM RNA-seq v2)
- Samples: 472 tumor samples
- Genes: 38 macrophage-related genes
- Data type: RNA-seq normalized expression counts

## References
- Murray & Wynn (2011) Nature Reviews Immunology
- Biswas & Mantovani (2010) Nature Immunology
- Sica & Mantovani (2012) Journal of Clinical Investigation
- Orecchioni et al. (2019) Frontiers in Immunology

## Repository Structure
`
melanoma_macrophage_markers/
+-- index.html                      # Dynamic dashboard (main deliverable)
+-- data/sample_expression.csv      # Expression data (38 genes x 472 samples)
+-- environment.yml                 # Conda environment
+-- README.md
+-- .gitignore
`

## How to Run Locally
Open index.html in any web browser. No server needed.

## Methods
- JavaScript-based analysis runs entirely in the browser (no server needed)
- PCA: SVD via numeric.js
- Enrichment score: mean expression of each gene set per sample
- Visualization: Plotly.js

## Acknowledgments
Based on TCGA-SKCM data from The Cancer Genome Atlas (cancer.gov/tcga)
