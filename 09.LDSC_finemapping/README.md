# 09. LDSC & fine mapping

- We obtained GWAS summary statistics for quantitative traits. We prepared summary statistics to the standard format for linkage disequilibrium score regression (LDSC). We used all union cCREs from each cell type of the retina and macula tissue as the background control set for the retina cell type computation. For each trait, we used cell-type-specific linkage disequilibrium score regression to estimate the enrichment coefficient of each annotation jointly with the background control.
- We conducted fine mapping for MacTel and AMD traits with susieR to prioritize lists of potential causal SNPs.
- [LDSC](https://github.com/bulik/ldsc)
- [susieR](https://stephenslab.github.io/susieR/)
