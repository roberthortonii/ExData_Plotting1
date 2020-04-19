library(dplyr)
library(lubridate)
data<-read.csv('./data/household_power_consumption.csv', na.strings = '?')
graph<-with(data, hist(Global_active_power, col = 'red',
                xlab='Global ActivePower (kilowatts)',
                main='Global Acive Power'))
dev.copy(png, './output/plot1.png', width=480, height=480)
dev.off()