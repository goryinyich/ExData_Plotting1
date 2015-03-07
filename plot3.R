source('data_loader.R')

png('plot3.png', width=480, height=480)
plot(epc$Time,
     epc$Sub_metering_1,
     type='l',
     xlab='',
     ylab='Energy sub metering')
lines(epc$Time,
      epc$Sub_metering_2,
      col='red')
lines(epc$Time,
      epc$Sub_metering_3,
      col='blue')
legend(x = 'topright',
       lwd=1,
       col=c('black', 'red', 'blue'),
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()
