#Recover powerdata, which is properly cleaned for its use
setwd("C:/datahouse")
powerdata<-read.table("powerdata.txt", header = TRUE, sep = ";")


#Start png dev, to save the plot to a png file
png(filename = "C:/datahouse/plot1.png",width = 480,height = 480,units = "px")

#Plot the histogram of Global Active Power
hist(powerdata$Global_active_power,xlab = "Global Active Power (Kilowatts)",
     col = "red",main = "Global Active Power")

#Turn off the device
dev.off()