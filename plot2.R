hpc <- read.table("hpc.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subhpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
datehpc <- strptime(paste(subhpc$Date, subhpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
numhpc <- as.numeric(subhpc$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datehpc, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 
