Data<-read.table("/Users/Vala/Desktop/Course Era/R Working Directory/Data Files/Exploratory Data Analysis/household_power_consumption.txt", sep = ";", header = TRUE,stringsAsFactors=FALSE, na.strings = "?" )
data1<- subset(Data, Date == "1/2/2007" | Date=="2/2/2007")


date_time <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png("plot3.png", width = 480, height = 480)

plot(date_time,as.numeric(data1$Sub_metering_1), type = "l",xlab="", ylab="Energy Submetering")
lines(date_time,as.numeric(data1$Sub_metering_2), type = "l", col = "red")
lines(date_time,as.numeric(data1$Sub_metering_3), type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()