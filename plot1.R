# plot 1

# figure 1 ----------------------------------------------------------------

png("plots/plot1.png",height=480,width=480)
hist(pwr_consumption$Global_active_power,col="red",
     xlim=c(0,6),xlab="Global active power (kilowatts)",
     main="Global Active Power")
dev.off()