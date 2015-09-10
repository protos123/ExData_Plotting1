#Set the working directory to read the data
setwd("C:/datahouse")

#Read the file and subset it to 1st and 2nd February
powerdata<-read.table("household_power_consumption.txt", header = TRUE, sep = ";")
powerdata<-powerdata[powerdata$Date=="1/2/2007"|powerdata$Date=="2/2/2007",]

#Create a DateTime Column for future use
powerdata$Date<-as.Date(powerdata$Date, "%d/%m/%Y")
powerdata$DateTime<-as.POSIXct(paste(powerdata$Date,powerdata$Time))

#Write the subsetted data to a file for future plots
write.table(powerdata,file = "powerdata.txt",sep = ";")