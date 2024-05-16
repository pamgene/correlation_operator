suppressPackageStartupMessages({
  library(tercen)
  library(dplyr)
})

do.cortest = function(df, ...) {
  
  result = try(cor.test(df$.x,df$.y, ...), silent = TRUE)
  
  if(inherits(result, 'try-error')) {
    return (data.frame(.ri = integer(),
                       .ci = integer(),
                       cor_coef = double(),
                       p_value = double()))
  }  
  
  return (data.frame(.ri = df$.ri[1],
                     .ci = df$.ci[1],
                     cor_coef = result$estimate,
                     p_value = result$p.value))
}

ctx = tercenCtx() 

if (!(ctx$hasNumericXAxis || ctx$isPairwise)) stop('A numeric x axis is required')

method <- ctx$op.value("method", as.character, "pearson")

ctx %>% 
  select(.ci, .ri, .x, .y) %>% 
  group_by(.ci, .ri) %>%
  do(do.cortest(., method = method)) %>%
  ctx$addNamespace() %>%
  ctx$save()


