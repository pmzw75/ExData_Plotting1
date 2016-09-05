# Read household power consumption data
hpc <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

# Select dates between 2007-02-01 and 2007-02-02
date1=as.Date("01/02/2007","%d/%m/%Y")
date2=as.Date("02/02/2007","%d/%m/%Y")
ind <- which(dates>=date1 & dates<=date2)
hpc <- hpc[ind,]
head(hpc)

hpc$Date<-paste(hpc$Date,hpc$Time)
hpc<-hpc[,-2]
hpc$Date<-strptime(hpc$Date,format="%d/%m/%Y %H:%M:%S")
head(hpc)
names(tmp)


