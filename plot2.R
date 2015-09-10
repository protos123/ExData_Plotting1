#Recover powerdata, which is properly cleaned for its use
setwd("C:/datahouse")
powerdata<-read.table("powerdata.txt", header = TRUE, sep = ";")
powerdata$DateTime<-as.POSIXct(paste(powerdata$Date,powerdata$Time))

#Start png dev, to save the plot to a png file
png(filename = "C:/datahouse/plot2.png",width = 480,height = 480,units = "px")

plot(powerdata$DateTime,powerdata$Global_active_power, 
     ylab="Global Active Power(Kilowatts)",xlab = "",type="l")

dev.off()
