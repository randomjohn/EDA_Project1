# plot 3

png("plots/plot3.png",height=480,width=480)
attach(pwr_consumption) #save typing
plot(DateTime,Sub_metering_1,type='l',col="black",
     main='',xlab='',ylab='Energy sub metering')
lines(DateTime,Sub_metering_2,col="red")
lines(DateTime,Sub_metering_3,col="blue")
legend("topright",paste("Sub_metering_",1:3,sep=""),col=c("black","red","blue"))
detach(pwr_consumption)
dev.off()