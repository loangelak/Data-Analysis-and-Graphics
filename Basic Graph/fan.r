#FAN PLOT
library(plotrix)
slices<-c(10,12,4,16,8)
lbls<-c("US", "UK", "Australia", "Germany", "France")
fan.plot(slices,labels=lbls,main="Fan Plot")
