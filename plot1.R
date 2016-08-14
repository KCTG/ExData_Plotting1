#read data ; txt file has been filtered to include only Feb 1 and Feb 2, 2007
pc <- read.table("02_hh_pc.txt", header = TRUE, sep=";")
pc$Date <- strptime(pc$Date, "%m/%d/%Y")
#save to png file
png(filename = "plot1.png", width = 480, height = 480, units = "px")
#Plot 1
hist(pc$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

