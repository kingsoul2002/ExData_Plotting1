png(file="./plot1.png")
library(data.table)
colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
DT <- read.table("./household_power_consumption.txt",header=TRUE,sep=";",na.strings=c("?"),colClasses=colClasses)
DT[[1]] <- as.Date(DT[[1]], "%d/%m/%Y")
good <- (DT[[1]]==as.Date("1/2/2007", "%d/%m/%Y") | DT[[1]]==as.Date("2/2/2007", "%d/%m/%Y"))
d <- DT[good,]
hist(d[[3]],col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()