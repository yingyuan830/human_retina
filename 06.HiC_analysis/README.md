# 06. HiC analysis

- After snm3C-seq mapping, the raw cell-level contact matrices are stored in HDF5-based scool format. We used the scHiCluster package to perform contact matrix imputation, the imputed matrices for each cell were stored in cool format. Aggregated the cell matrices into cell groups and these pseudo-bulk matrices are concatenated into a tensor called CoolDS, and stored in the Zarr format.
- We applied the imputed cell-level contact matrics at 25kb resolution to identify the domain boundaries within each cell using the TopDom algorithm. We used cooltools to call cluster-level boundaries and domains with 25kb resolution matrices.
- [scHiCluster](https://github.com/zhoujt1994/scHiCluster)