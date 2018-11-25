#This is a comment

x1 = 3
x2 <-3 #same as x2 = 3

#pres ctrl + enter to run command

x1
x2

y
ls() #variables in env
women
?AirPassengers
data()
AirPassengers
library() #libs currently loaded

?mean #help
help(mean)
??mean #search through other sources
x=0:10 #vector 1-10
x #display x
x <- c(0:10, 50)#c means combine/concatenate
x
xm <- mean(x)
c(xm, mean(x, trim = 0.10))
x = c(1,1,1,1,5,5,5,5,7,7)

mean(x)
mean(x, trim = 0.3)

x=c(1,5,5)
mean(x)

1:10
1:1000000

x=c(1,34,5)

version #version of R

Sys.Date() #today's date

getwd() #working directory

methods(class='matrix') #methods available for a class of object

plot(10:100) #basic command to plot
plot(women)
