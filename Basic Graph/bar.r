#BASIC GRAPHS

install.packages("vcd")
names(Arthritis)

#SIMPLE VERTICAL AND HORIZONTAL BAR CHARTS
library(vcd)
counts<-table(Arthritis$Improved)
counts
barplot(counts, main ="Simple Bar Plot", xlab="Improvement", ylab="Frequency")
barplot(counts, main="Horizontal Bar Plot", xlab="Frequency", ylab="Improvement", horiz=TRUE)

#STACKED AND GROUPED BAR PLOTS
library(vcd)
counts<-table(Arthritis$Improved, Arthritis$Treatment)
counts
barplot(counts, main="Stacked Bar Plot", xlab="Treatment", ylab="Frequency", col=c("red", "yellow", "green"), legend=rownames(counts))
barplot(counts, main="Grouped Bar Plot", xlab="Treatment", ylab="Frequency", col=c("red", "yellow", "green"), legend=rownames(counts), beside=TRUE)

#SPINOGRAM
#Stacked bar plot rescaled height =1
#Larger % of patients w/ marked improvement in Treated condition quite evident in comparison to Placebo
library(vcd)
attach(Arthritis)
counts <- table(Treatment, Improved)
spine(counts, main="Spinogram Example")
detach(Arthritis)
