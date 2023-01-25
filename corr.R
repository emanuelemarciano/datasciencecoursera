corr <- function(directory, threshold = 0) {
  dataset <- vector('numeric', length = 0)
  full_files <- list.files(directory, full.names = TRUE)
  
  for (i in 1:332) {
    data <- data.frame(read.csv(full_files[i]))
    check <- complete.cases(data)
    data_adj <- data[check, ]
    test <- nrow(data_adj)

    if (test > threshold) {
      result <- cor(data_adj$nitrate, data_adj$sulfate, method = 'pearson')
    }
    
    else{next}

    dataset[i] <- result
  }
    check <- !is.na(dataset)
    dataset[check]
}