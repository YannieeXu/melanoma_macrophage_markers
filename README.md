# Macrophage-Associated Immune Markers in Melanoma

## Research Question
Are there genes related to macrophages and immune responses that show different expression patterns in melanoma tumor samples?

## Background
Macrophages are immune cells commonly found in the tumor microenvironment. This project examines the expression of seven known macrophage-related genes (CD68, CD163, CSF1R, MRC1, C1QA, C1QB, C1QC) in TCGA Skin Cutaneous Melanoma (SKCM) samples.

## Dataset
- Source: TCGA-SKCM (The Cancer Genome Atlas)
- Samples: 472 tumor samples
- Genes: 7 macrophage-related genes
- Data type: RNA-seq normalized expression counts
- Source URL: https://www.cbioportal.org/ (TCGA-SKCM RNA-seq v2)
- Note: Real TCGA-SKCM RNA-seq expression data, downloaded via cBioPortal API.

## Repository Structure
melanoma_macrophage_markers/
+-- data/sample_expression.csv      # Gene expression data
+-- scripts/
|   +-- 01_download_data.R          # Data download guide
|   +-- 02_explore_data.R           # Basic data exploration
+-- dashboard.Rmd                   # Flexdashboard with full analysis
+-- dashboard.html                  # Rendered dashboard
+-- boxplot.png                     # Expression boxplot
+-- density.png                     # Expression density plot
+-- heatmap.png                     # Correlation heatmap
+-- environment.yml                 # Conda environment
+-- README.md
+-- .gitignore

## How to Run
conda env create -f environment.yml
conda activate capstone
In R: rmarkdown::render("dashboard.Rmd")
Then open dashboard.html in a browser.

## Results
1. CD68 shows the highest expression (pan-macrophage marker).
2. C1QA, C1QB, C1QC show strong mutual correlation (C1 complex).
3. CD163 and MRC1 show moderate correlation (M2 macrophage).
4. CD68 most variable, CSF1R least variable across samples.
5. PCA shows distinct expression patterns across the gene set.

## Methods
R with ggplot2, reshape2, flexdashboard. Correlation analysis. Log-transformed visualization.

## Acknowledgments
Based on TCGA-SKCM data from The Cancer Genome Atlas (cancer.gov/tcga)
