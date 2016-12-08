#������ ������
#���������� �����
dataframe<-read.csv("D:/Soft/RStudio/exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, dec=".", sep=";")


#������� ��� ���� � "?"
cleanframe<-dataframe[apply(dataframe, 1, function(row) {all(!('?' %in% row))}),]

#������������ ����� � �������� ������ � ������ ����
cleanframe$Global_active_power=as.numeric(levels(cleanframe$Global_active_power))[cleanframe$Global_active_power]
cleanframe$Date=as.Date(cleanframe$Date, format="%d/%m/%Y")

plotdata<-cleanframe[cleanframe["Date"]=="2007-02-01" | cleanframe["Date"]=="2007-02-02", "Global_active_power"]

#�������� �������
plot(plotdata, type ="l", xaxt="n", xlab="", ylab ="Global active power(kilowatts)")
axis(1, at=c(0, length(plotdata)/2, length(plotdata)), labels=c("Thuesday","Friday","Saturday"))

#���������� �������, �� ���������� 
dev.copy(device = png, filename ='D:/Soft/RStudio/Plot2.png', width=480, height=480)
dev.off()

