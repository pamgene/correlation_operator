library(tercen)
library(dplyr)
 
do.pearson = function(df, ...){
  
  result = try(cor.test(df$.x,df$.y, ...), silent = TRUE)
  
  if(inherits(result, 'try-error')) {
    return (data.frame(.ri = integer(),
                       .ci = integer(),
                       cor=double(),
                       pv=double()))
  }  
  
  return (data.frame(.ri = df$.ri[1],
                     .ci = df$.ci[1],
                     cor=result$estimate,
                     pv=result$p.value))
}

ctx = tercenCtx() 

if (!(ctx$hasNumericXAxis || ctx$isPairwise)) stop('A numeric x axis is required')

ctx %>% 
  select(.ci, .ri, .x, .y) %>% 
  group_by(.ci, .ri) %>%
  do(do.pearson(., method="pearson")) %>%
  ctx$addNamespace() %>%
  ctx$save()


