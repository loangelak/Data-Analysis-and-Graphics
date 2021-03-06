#BOX PLOTS
boxplot(mpg~cyl, data=mtcars, main='Car Mileage Data', xlab='Number of Cylinders', ylab='Miles Per Gallon')

boxplot(mpg~cyl, data=mtcars, notch=TRUE, varwidth=TRUE, col='red', main='Car Mileage Data', xlab='Number of Cylinders', ylab='Miles Per Gallon')

#BOX PLOTS | TWO CROSSED FACTORS
mtcars$cyl.f<-factor(mtcars$cyl, levels=c(4,6,8), labels=c("4","6","8")) #create factor for # of cylinders

mtcars$am.f<-factor(mtcars$am, levels=c(0,1), labels=c("auto","standard")) #create factor for transmission type

boxplot(mpg~am.f *cyl.f, data=mtcars, varwidth=TRUE, col=c("gold","darkgreen"), main="MPG Distribution by Auto Type", xlab="Auto Type") #plot
