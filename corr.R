corr <- function(directory, threshold=0) {
  mynobs <- complete(directory)
  myids <- mynobs[ mynobs[,2] > threshold,1]

  temp <- dir(directory, pattern = '\\.csv', full.names = TRUE)
  myfiles <- lapply(temp[myids], read.csv)
  
  x <- numeric(0)
  for (mydf in myfiles) {
    x = c(x, cor(mydf$sulfate,mydf$nitrate,use="pairwise.complete.obs"))
  }
  return(x)
}
