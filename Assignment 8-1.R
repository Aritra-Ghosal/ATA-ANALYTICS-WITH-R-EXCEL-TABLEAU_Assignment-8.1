library(RcmdrPlugin.IPSUR)
library(TeachingDemos)
library(Hmisc)

data("RcmdrTestDrive")
names(RcmdrTestDrive)

#1.a
#salary by gender
by(salary,gender,mean,na.rm=TRUE)
#salary by smoking status
by(salary,smoking,mean,na.rm=TRUE)

#1.b
#Gender having highest mean salary
y<-by(salary,gender,mean,na.rm=TRUE)
y[which(y==max(y))]

#1.c
#mean salary by gender and smoking status asiigned into varribles
x <-c(by(salary,gender,mean,na.rm=TRUE), by(salary,smoking,mean,na.rm=TRUE))
#max salary with salary in gender and smoker variation
x[which(x==max(x))]

#1.d
#Comparing the spreads for the genders by calculating the standard deviation of salary by gender.
y<-tapply(salary,list(gender=gender),sd)
y
