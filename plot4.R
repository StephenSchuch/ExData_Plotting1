hpc <- read.table("hpc.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subhpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
datehpc <- strptime(paste(subhpc$Date, subhpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gapnumhpc <- as.numeric(subhpc$Global_active_power)
grpnumhpc <- as.numeric(subhpc$Global_reactive_power)
volnumhpc <- as.numeric(subhpc$Voltage)
subMetering1 <- as.numeric(subhpc$Sub_metering_1)
subMetering2 <- as.numeric(subhpc$Sub_metering_2)
subMetering3 <- as.numeric(subhpc$Sub_metering_3)
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(datehpc, gapnumhpc, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datehpc, volnumhpc, type="l", xlab="datetime", ylab="Voltage")
plot(datehpc, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datehpc, subMetering2, type="l", col="red")
lines(datehpc, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datehpc, grpnumhpc, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off() 
