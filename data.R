# EDA course project 1
defactor <- function(x) levels(x)[x]
# get data ----------------------------------------------------------------

pwr_consumption  <- read.table("exdata-data-household_power_consumption/household_power_consumption.txt",
                               sep=';',
                               header=TRUE)


# subset data -------------------------------------------------------------


pwr_consumption$Date2 <- as.Date(pwr_consumption$Date,format="%d/%m/%Y")
pwr_consumption <- subset(pwr_consumption,Date2 %in% c(as.Date("2007-02-01"),as.Date("2007-02-02")))


# data cleaning -----------------------------------------------------------


pwr_consumption$Global_active_power <- as.numeric(defactor(pwr_consumption$Global_active_power))
pwr_consumption$Global_reactive_power <- as.numeric(defactor(pwr_consumption$Global_reactive_power))
pwr_consumption$Voltage <- as.numeric(defactor(pwr_consumption$Voltage))
pwr_consumption$Sub_metering_1 <- as.numeric(defactor(pwr_consumption$Sub_metering_1))
pwr_consumption$Sub_metering_2 <- as.numeric(defactor(pwr_consumption$Sub_metering_2))
pwr_consumption$Sub_metering_3 <- as.numeric(defactor(pwr_consumption$Sub_metering_3))


dt <- with(pwr_consumption,
           paste(Date,Time)) 
pwr_consumption$DateTime <- strptime(dt,"%d/%m/%Y %H:%M:%S")

