# Correlation

##### Description

This operator computes correlation between two contineous vaiables, or between a continuous variable and a categorical factor.

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

If the x-axis is non-numeric the operator attempts to convert to a dummy variable (0,1 .., n-1) for a corresponding factor with n levels.
This may be most meaningful for a binary factor (n = 2)

##### References

See the `base::cor.test` function of the R package for the documentation.  
 
