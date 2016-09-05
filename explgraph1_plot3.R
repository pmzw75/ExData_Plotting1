# Plot histogram of Global Active Power
# Date: Date & Time
# Global_active_power: household global minute-averaged active power (in kilowatt)
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# Voltage: minute-averaged voltage (in volt)
# Global_intensity: household global minute-averaged current intensity (in ampere)
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

png(filename = "plot3.png",
    width = 480, height = 480)
plot(hpc_ss$Date,hpc_ss$Sub_metering_1,
     type="n",
     xlab="",
     ylab="Energy sub metering")
lines(hpc_ss$Date,hpc_ss$Sub_metering_1)
lines(hpc_ss$Date,hpc_ss$Sub_metering_2,col="red")
lines(hpc_ss$Date,hpc_ss$Sub_metering_3,col="purple")
legend('topright',
       names(hpc_ss)[6:8],
       col=c("black","red","purple"),
       lty=c(1,1))
dev.off()
