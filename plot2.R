# plot 2
png("plots/plot2.png",height=480,width=480)
with(pwr_consumption,
     plot(DateTime,Global_active_power,type='l',
          ylab="Global active power (kilowatts)",
          xlab=""))
dev.off()