whatclass<-read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=50)
classes<-sapply(whatclass,class)
classes
dataset<-read.table("household_power_consumption.txt",colClasses=classes,header=TRUE,sep=";",dec=".",na.strings = "?")
head(dataset)
hist(dataset$Global_active_power,col="red")
dev.copy(png,file="plot1.png")
dev.off()
