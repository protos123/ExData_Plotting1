#Recover powerdata, which is properly cleaned for its use
setwd("C:/datahouse")
powerdata<-read.table("powerdata.txt", header = TRUE, sep = ";")
powerdata$DateTime<-as.POSIXct(paste(powerdata$Date,powerdata$Time))

#Turn on the dev to export to a PNG
png(filename = "C:/datahouse/plot4.png",width = 480,height = 480,units = "px")

#Declare 4 spaces for plot
par(mfrow=c(2,2))
plot(powerdata$DateTime,powerdata$Global_active_power, 
     ylab="Global Active Power",xlab = "",type="l")

plot(powerdata$DateTime,powerdata$Voltage, type="l",
     ylab = "Voltage",xlab = "datetime")

plot(powerdata$DateTime,powerdata$Sub_metering_1,type = "l",
     xlab = "",ylab = "Energy sub metering")
lines(powerdata$DateTime,powerdata$Sub_metering_2,type = "l",col="red")
lines(powerdata$DateTime,powerdata$Sub_metering_3,type = "l",col="blue")
#Create legend
legendname=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legendcol=c("black","red","blue")
legend("topright",legend = legendname,col =legendcol,lty = "solid")

plot(powerdata$DateTime,powerdata$Global_reactive_power, type = "l",
     ylab="Global reactive power",xlab="datetime" )

dev.off()