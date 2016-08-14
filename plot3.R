#read data ; txt file has been filtered to include only Feb 1 and Feb 2, 2007
pc1 <- read.table("02_hh_pc.txt", header = TRUE, sep=";")
dt <- paste(pc1$Date, pc1$Time)
pc1$datetime <- strptime(dt, "%m/%d/%Y %H:%M:%S")
pc1$Weekday <- weekdays(pc1$datetime)

#save to png file
png(filename = "plot3.png", width = 480, height = 480, units = "px")
#Plot 3
with(pc1, plot(datetime, Sub_metering_3, type = "l", ylab = "Energy sub metering", xlab = ""))
points(pc1$datetime, pc1$Sub_metering_3, col = "blue", type = "l")
points(pc1$datetime, pc1$Sub_metering_2, col = "red", type = "l")
points(pc1$datetime, pc1$Sub_metering_1, col = "black", type = "l")
legend("topright", lty = c(1,1,1), col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )
