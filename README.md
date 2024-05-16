# Correlation

##### Description

This operator computes Pearson's correlation of two input sets of data per cell.

##### Usage

Input|.
---|---
`x-axis`  | value of one group of data
`y-axis` | value of other group of data

Settings|.
---|---
`method`  | Correlation test method to be used.

Output|.
---|---
`cor_coef`| numeric, correlation coefficient calculated per cell
`p_value`| numeric, p-value calculated per cell

##### Details

A pearson correlation is performed per cell where the two groups of data to be correlated are found on the `x-axis` and `y-axis`.
This operator is ideally suited as an operator for multiple pairwise projections in Tercen.

##### References

See the `base::cor.test` function of the R package for the documentation.  
 
