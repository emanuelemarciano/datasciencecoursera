install.packages('swirl')
packageVersion('swirl')
library('swirl')
install_from_swirl('R Programming')
install.packages('readr')

count <- 0
while(count < 10) {
  print(count)
  count <- count + 1
}