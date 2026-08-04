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

## Example Datasets for Upload Testing
Two public GEO melanoma datasets are included so you can test the upload feature:

- **data/GSE91061_38genes.csv**: FPKM expression, 109 samples, 38 genes (anti-PD-1 treatment cohort)
- **data/GSE98394_38genes.csv**: raw counts, 78 samples, 38 gene rows (note: MSR1, IL10, and CCL18 are not measured, so they are recorded as NA)

To test: download either file, click Choose File in the dashboard, and all plots will regenerate automatically.

## CSV Format
Uploaded files must be comma-separated with the first column as gene symbols and the remaining columns as sample IDs. Numeric expression values should fill the table; missing values can be recorded as `NA`. The dashboard requires at least 3 genes and 5 samples to run the analysis.

## References
- Murray & Wynn (2011) Nature Reviews Immunology
- Biswas & Mantovani (2010) Nature Immunology
- Sica & Mantovani (2012) Journal of Clinical Investigation
- Orecchioni et al. (2019) Frontiers in Immunology

## Repository Structure
```
melanoma_macrophage_markers/
+-- index.html                      # Dynamic dashboard (main deliverable)
+-- data/sample_expression.csv      # Built-in TCGA-SKCM data (38 genes x 472 samples)
+-- data/GSE91061_38genes.csv       # Example GEO dataset (FPKM, 109 samples)
+-- data/GSE98394_38genes.csv       # Example GEO dataset (counts, 78 samples)
+-- environment.yml                 # Conda environment
+-- README.md
+-- REFLECTION.md                   # Capstone reflection
+-- .gitignore
```

## How to Run Locally
Open index.html in any web browser. No server needed.

## Methods
- JavaScript-based analysis runs entirely in the browser (no server needed)
- PCA: SVD via numeric.js
- Enrichment score: mean expression of each gene set per sample
- Visualization: Plotly.js

## Acknowledgments
Based on TCGA-SKCM data from The Cancer Genome Atlas (cancer.gov/tcga)
