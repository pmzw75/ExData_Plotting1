# Read household power consumption data
# Date: Date in format dd/mm/yyyy
# Time: time in format hh:mm:ss
# Global_active_power: household global minute-averaged active power (in kilowatt)
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# Voltage: minute-averaged voltage (in volt)
# Global_intensity: household global minute-averaged current intensity (in ampere)
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

hpc   <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
tmp   <- hpc$Date
tmp   <- as.Date(tmp,format="%d/%m/%Y")
date1 <- as.Date("01/02/2007","%d/%m/%Y")
date2 <- as.Date("02/02/2007","%d/%m/%Y")
ind   <- which(tmp >= date1 & tmp <= date2)

hpc_ss      <- hpc[ind,]
hpc_ss$Date <- paste(hpc_ss$Date,hpc_ss$Time)
hpc_ss      <- hpc_ss[,-2]
hpc_ss$Date <- strptime(hpc_ss$Date,format="%d/%m/%Y %H:%M:%S")

# Select dates between 2007-02-01 and 2007-02-02
str(hpc_ss)
head(hpc_ss)
names(hpc_ss)


