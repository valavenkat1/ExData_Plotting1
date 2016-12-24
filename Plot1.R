Data<-read.table("/Users/Vala/Desktop/Course Era/R Working Directory/Data Files/Exploratory Data Analysis/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?" )
data1<- subset(Data, Date == "1/2/2007" | Date=="2/2/2007")

png("plot1.png", width = 480, height = 480)

hist(data1$Global_active_power,  col = "red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
