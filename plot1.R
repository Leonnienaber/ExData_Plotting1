## Course: Exploratory data analysis
## Project: Week 1 Project 1
## Student: Leon Nienaber
## Date: 3 May 2020
## Data source: UC Irvine Machine Learning Repository,http://archive.ics.uci.edu/ml/index.php
## Data set used: "Individual household electric power consumption Data Set"
## __________________________________________________________________________________________
## Loading libraries and setting up Working folder

library(datasets)
setwd("D:/Coursera Data Science/New folder")

## __________________________________________________________________________________________
## Loading data
## Subset the required dates
## Remove redundant files

Rawdata <- read.table("./household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, header = TRUE,na.strings="?")
HouseData <- subset(Rawdata, Rawdata$Date == "1/2/2007"| Rawdata$Date=="2/2/2007")
rm(Rawdata)

## __________________________________________________________________________________________
## Plot 1
## Transform some data to numerical

transform(HouseData, Global_active_power = as.numeric(Global_active_power))

class(HouseData$Global_active_power)

png(filename = "plot1.png", width = 480, height = 480)
hist(HouseData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
