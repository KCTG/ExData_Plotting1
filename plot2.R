#read data ; txt file has been filtered to include only Feb 1 and Feb 2, 2007
pc1 <- read.table("02_hh_pc.txt", header = TRUE, sep=";")
dt <- paste(pc1$Date, pc1$Time)
pc1$datetime <- strptime(dt, "%m/%d/%Y %H:%M:%S")
pc1$Weekday <- weekdays(pc1$datetime)

#save to png file
png(filename = "plot2.png", width = 480, height = 480, units = "px")
#Plot 2
with(pc1,plot(datetime, Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l", xlab = ""))