hpc <- read.table("hpc.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subhpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
numhpc <- as.numeric(subhpc$Global_active_power)
png("plot1.png", width=480, height=480)
hist(numhpc, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 
