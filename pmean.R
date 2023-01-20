file <- function(directory, id = 1:332) {
  db <- dir(directory, full.names = T) %>% map_df(read.csv)
  return(db)
}

pmean <- function(directory, pollutant, id = 1:332){
  db <- file(directory, id)
  l = NULL 
  for(i in id){
    l = c(l, db[[pollutant]])
  } 
  return (mean(amount, na.rm = T))
}

complete <- function(directory, id){
   db <- file(directory, id)
   nobs = NULL
   for (i in id) {
     nobs = c(nobs, nrow(na.omit(db)))
   } 
   return(data.frame(id, nobs))
}

corr <- function(directory, threshold = 0){
  db <- file(directory, id)
  corelations = numeric()
  
  for (i in 1:332) {
    l = na.omit(db)
    if (nrow(monitor) > threshold) {
      corelations = c(corelations, cor(l$sulfate, l$nitrate))
    }
  }
  return(corelations)
}
