# pearson operator

#### Description
`pearson` operator performs a person correlation of two input sets of data per cell

##### Usage
Input projection|.
---|---
`x-axis`  | value of one group of data
`y-axis` | value of other group of data


Output relations|.
---|---
`cor`| numeric, pearson correlation calculated per cell
`pv`| numeric, p-value calculated per cell

##### Details
A pearson correlation is performed per cell where the two groups of data to be correlated are found on the `x-axis` and `y-axis`.
This operator is ideally suited as an operator for multiple pairwise projections in Tercen.


#### References
see the `base::cor.test` function of the R package for the documentation, 


##### See Also

#### Examples




 
 
