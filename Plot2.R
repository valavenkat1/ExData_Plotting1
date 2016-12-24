Data<-read.table("/Users/Vala/Desktop/Course Era/R Working Directory/Data Files/Exploratory Data Analysis/household_power_consumption.txt", sep = ";", header = TRUE,stringsAsFactors=FALSE, na.strings = "?" )
data1<- subset(Data, Date == "1/2/2007" | Date=="2/2/2007")

date_time <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width = 480, height = 480)
plot(date_time,as.numeric(data1$Global_active_power), type = "l",xlab="", ylab="Global Active Power (kilowatts)")

dev.off()