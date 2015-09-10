#Recover powerdata, which is properly cleaned for its use
setwd("C:/datahouse")
powerdata<-read.table("powerdata.txt", header = TRUE, sep = ";")
powerdata$DateTime<-as.POSIXct(paste(powerdata$Date,powerdata$Time))

#Start png dev, to save the plot to a png file
png(filename = "C:/datahouse/plot3.png",width = 480,height = 480,units = "px")

plot(powerdata$DateTime,powerdata$Sub_metering_1,type = "l",
     xlab = "",ylab = "Energy sub metering")
lines(powerdata$DateTime,powerdata$Sub_metering_2,type = "l",col="red")
lines(powerdata$DateTime,powerdata$Sub_metering_3,type = "l",col="blue")
#Create legend
legendname=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legendcol=c("black","red","blue")
legend("topright",legend = legendname,col =legendcol,lty = "solid")
dev.off()