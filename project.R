setwd("D:\\") #Your workspace link to data babiesI.data

#Cài đặt packages Hmisc, e1071 và sử dụng nó
#Install packages Hmisc & e1071
install.packages("e1071")
install.packages("Hmisc")
library("e1071")
library("Hmisc")

data <- read.table("babiesI.data", header = TRUE)

#=============================================================
#Chia làm 2 loại đối tượng có hút và không hút thuốc
#Devide into 2 type of object 

#có hút
#smoke
smoke <- subset(data, smoke == "1" | smoke == "9")
#không hút
#nonsmoke
nonsmoke <- subset(data, smoke == "0" | smoke == "9")

#=============================================================
#Thống kê số liệu về bà mẹ có hút thuốc
#số lượng đối tượng 
length(smoke[,1])
#phần tử cân nặng nhỏ nhất và lớn nhất
min(smoke[,1])
max(smoke[,1])
#Trung bình cân nặng
mean(smoke[,1])
#Độ lệch chuẩn dữ liệu
sd(smoke[,1])
#Phương sai 
var(smoke[,1])
#Trung vị cân nặng
median(smoke[,1])
#Phần tư vị 
quantile(smoke[,1],0.25)
#Ba phần tư vị 
quantile(smoke[,1],0.75)
#Các chỉ số của thông tin cân nặng
quantile(smoke[,1])
#Chỉ số IQR 
IQR(smoke[,1])
#giá trị skewness và kurtosis
skewness(smoke[,1])
kurtosis(smoke[,1])
#histogram
hist(smoke[,1])
#boxplot
boxplot(smoke[,1])

#=============================================================
#Thống kê số liệu về bà mẹ không hút thuốc
#số lượng đối tượng 
length(nonsmoke[,1])
#phần tử cân nặng nhỏ nhất và lớn nhất
min(nonsmoke[,1])
max(nonsmoke[,1])
#Trung bình cân nặng
mean(nonsmoke[,1])
#Độ lệch chuẩn dữ liệu
sd(nonsmoke[,1])
#Phương sai 
var(nonsmoke[,1])
#Trung vị cân nặng
median(nonsmoke[,1])
#Phần tư vị 
quantile(nonsmoke[,1],0.25)
#Ba phần tư vị 
quantile(nonsmoke[,1],0.75)
#Các chỉ số của thông tin cân nặng
quantile(nonsmoke[,1])
#Chỉ số IQR 
IQR(nonsmoke[,1])
#giá trị skewness và kurtosis
skewness(nonsmoke[,1])
kurtosis(nonsmoke[,1])
#histogram
hist(nonsmoke[,1])
#boxplot
boxplot(nonsmoke[,1])

#=============================================================
#bihistogram
histbackback(smoke[,1],nonsmoke[,1])
#qqplot
qqplot(smoke[,1],nonsmoke[,1])