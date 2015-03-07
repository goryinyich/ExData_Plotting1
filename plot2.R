source('data_loader.R')

png('plot2.png', width=480, height=480)
plot(epc$Time,
     epc$Global_active_power,
     type='l',
     xlab='',
     ylab='Global Active Power (kilowatts)')
dev.off()
