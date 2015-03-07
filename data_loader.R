# loads the required data, if neccessary,
# and subsamples the date range we need
if (!require('stringr')) {
  install.packages('stringr')
  library(stringr)
}

Sys.setlocale('LC_TIME', 'en_US.UTF-8')

read.dataset <- function(filename) {
  dataset <- read.table(file=filename,
                        header=T,
                        sep=';',
                        na.strings='?')
  dataset <- dataset[which(dataset$Date == '1/2/2007' |
                           dataset$Date == '2/2/2007'), ]
  dt <- sapply(1:nrow(dataset), function(i) {
    str_c(dataset$Date[i], ' ', dataset$Time[i])
  })
  dataset$Time <- strptime(dt, '%d/%m/%Y %H:%M:%S')
  dataset$Date <- NULL
  return(dataset)
}

if (!exists('epc')) {
  epc <- read.dataset('household_power_consumption.txt')
}
