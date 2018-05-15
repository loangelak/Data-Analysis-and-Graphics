#KERNEL DENSITY PLOT | Use to compare groups
par(mfrow=c(2,1))
d<-density(mtcars$mpg)
plot(d)

d <- density(mtcars$mpg)
plot(d, main="Kernel Density of Miles Per Gallon")
polygon(d, col="red", border="blue")
rug(mtcars$mpg, col="brown") 

#COMPARATIVE KERNEL DENSITY PLOTS
par(lwd=2)
library(sm)
attach(mtcars)
cyl.f<-factor(cyl, levels=c(4,6,8), labels=c("4 cylinder","6 cylinder", "8 cylinder")) #create grouping factors

sm.density.compare(mpg,cyl,xlab='Miles per Gallon') #plot
title(main='MPG Distribution by Car Cylinders') #title

colfill<-c(2:(1+length(levels(cyl.f))))
legend(locator(1), levels(cyl.f), fill=colfill)#add via click

detach(mtcars)
