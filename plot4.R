source('data_loader.R')

png('plot4.png', width=480, height=480)
par(mfrow=c(2, 2))

plot(epc$Time,
     epc$Global_active_power,
     type='l',
     xlab='',
     ylab='Global Active Power')

plot(epc$Time,
     epc$Voltage,
     type='l',
     xlab='datetime',
     ylab='Voltage')

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
       bty='n',
       lwd=1,
       col=c('black', 'red', 'blue'),
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

plot(epc$Time,
     epc$Global_reactive_power,
     type='l',
     xlab='datetime',
     ylab='Global_reactive_power')

dev.off()
