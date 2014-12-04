# plot 4
png("plots/plot4.png",height=480,width=480)
op <- par(mfrow=c(2,2))
attach(pwr_consumption) #save typing
#first plot
plot(DateTime,Global_active_power,type='l',
    ylab="Global active power (kilowatts)",
    xlab="")
#second plot
plot(DateTime,Voltage,type='l',
     ylab="Voltage",
     xlab="datetime")
#third plot
plot(DateTime,Sub_metering_1,type='l',col="black",
     main='',xlab='',ylab='Energy sub metering')
lines(DateTime,Sub_metering_2,col="red")
lines(DateTime,Sub_metering_3,col="blue")
legend("topright",paste("Sub_metering_",1:3,sep=""),col=c("black","red","blue"))
#fourth plot
plot(DateTime,Global_reactive_power,type='l',
     ylab="Global_reactive_power",
     xlab="datetime")

#cleanup
detach(pwr_consumption)
par(op)
dev.off()