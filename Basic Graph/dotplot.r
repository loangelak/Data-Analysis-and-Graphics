#DOT PLOTS | method of plotting lg # of labeled values
dotchart(mtcars$mpg, labels=row.names(mtcars),cex=.7, main='Gas Mileage for Car Models', xlab='Miles Per Gallon')

#DOT PLOT GROUPED, SORTED AND COLORED
x<-mtcars[order(mtcars$mpg),]#sort via mpg high to low
x$cyl<-factor(x$cyl) #tranform into a factor
x$color[x$cyl==4]<-"red" #add to dataframe 
x$color[x$cyl==6]<-"blue"
x$color[x$cyl==8]<-"darkgreen"
dotchart(x$mpg, labels=row.names(x), cex=.7, groups=x$cyl, gcolor="black", color=x$color, pch=19, main="Gas Mileage for Car Models\ngrouped by cylinder", xlab="Miles Per Gallon")