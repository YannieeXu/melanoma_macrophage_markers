expr <- read.csv("data/sample_expression.csv", check.names=FALSE)
rownames(expr) <- expr[,1]
expr <- expr[,-1]
cat(paste("Dimensions:", nrow(expr), "genes x", ncol(expr), "samples\n"))
mg <- c("CD68","CD163","CSF1R","MRC1","C1QA","C1QB","C1QC")
avail <- mg[mg %in% rownames(expr)]
cat(paste("Genes found:", length(avail), "/", length(mg), "\n"))
cat("Summary:\n")
for(g in avail){v<-as.numeric(expr[g,]);cat(sprintf("  %s: mean=%.2f\n",g,mean(v)))}
cat("\nData loaded successfully!\n")
