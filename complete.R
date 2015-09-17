complete <- function(directory, id = 1:332) {
  temp <- dir(directory, pattern = '\\.csv', full.names = TRUE)
  myfiles <- lapply(temp[id], read.csv)
  mycases <- lapply(myfiles, complete.cases)
  mycount <- lapply(mycases, sum)
  nobs <- unlist(mycount)
  data.frame(id,nobs)
}
