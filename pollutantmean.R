pollutantmean <- function(directory, pollutant, id = 1:332) {
  temp <- dir(directory, pattern = '\\.csv', full.names = TRUE)
  myfiles <- lapply(temp[id], read.csv)
  table <- do.call(rbind,myfiles)
  mean(table[[pollutant]], na.rm=TRUE)
}
