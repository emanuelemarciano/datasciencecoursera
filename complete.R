complete <- function(directory, id = 1:332) {
  dataset <- data.frame()
  df <- data.frame()
  full_files <- list.files(directory, full.names = TRUE)
  
  for (i in id) {
    dataset <- read.csv(full_files[i])
    check <- complete.cases(dataset)
    output <- data.frame(i, nrow(dataset[check, ]))
    df <- rbind(df, output)
  }
  
  colnames(df) <- c('id', 'nobs')
  df
}