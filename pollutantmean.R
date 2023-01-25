dataset_url <- 'https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip'
download.file(dataset_url, 'rprog%2Fdata%2Fspecdata.zip')
unzip('rprog%2Fdata%2Fspecdata.zip', exdir = 'specdata')

pollutantmean <- function(directory, pollutant, id) {
  dataset <- data.frame()
  full_files <- list.files(directory, full.names = TRUE)
  
  for (i in id) {
    dataset <- rbind(dataset, read.csv(full_files[i]))
  }
  
  dataset_reduced <- select(dataset, pollutant, ID)
  mean(dataset_reduced[,1], na.rm = TRUE) 

}