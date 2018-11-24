#Data Structures in R

c(2,4,6)
?seq(2,3,0.5)
seq(by=.5, from=2, to=3)
rep(1:3,times=4)
rep(c(3,6,7),times=4)
?rep
rep(c(3,4,6,2), each=4)

(x1=1:30) #asssignment as well as printing that's why x1 is in parenthesis
(x2=c(1,2,13,4,5))
class(x2)

(x3=c('a',"ABC"))
class(x3)
(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a', "Henry", 4))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)
class(c(3,5))
x5=c(3L,5L)
class(x5)

x5a = c(3,5.5)
class(x5a)
as.integer(x5a)

(x5b=c(1, 'a', T, 4L))
class(x5b)

x[1:100]
x

(x6=seq(0,100, by=3))
seq(0,100,3)
seq(to=100, from=0, by=3)
seq(1,5,2)

?seq


x6
length(x6)
x6[1:5]
x6[10:20]
x6[seq(1,length(x6), by=2)] #alternate elements

x6[c(2,4)]
x6[-1] #all elements except 1st
x6[-c(1:10, 15:20)]
x6[c(2,-4)] #ERROR cannot mix positive with the negative integers

x6[c(2.4,3.54)] #real numbers truncated

x6
x6[x6>30|x6<40]
x6[x6>30&x6<40]
length(x6)

x6[-(length(x6)-1)]
(x7 = c(x6, x2))
