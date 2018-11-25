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

#modify
x6
set.seed(1234)
(x6=sample(1:50))

sort(x6)
sort(x6[-c(1,2)])
sort(x6, decreasing=T)
x6
rev(x6)

x6[2:10] <- 99; x6
x6[x6 > 30 & x<40] = 666
x6

x7= x6[1:4]; x7 #truncate x to first 4 elements

1:5
#equal partitions within a range

(x=seq(1,5, length.out = 15))

x

x= NULL
x

#NULL
x[4]
?distribution
?rnorm
(x=rnorm(1000000))
plot(density(x))
abline(v=c(-3,0,3))
mean(x)
(x1 = rnorm(100, mean = 50, sd = 5))
plot(density(x1))
abline(v=mean(x1), h=0.04)
hist(x1, breaks=15) #expansion of histogram
hist(x1)
hist(x1, freq=F)
lines(density(x1),col=2)
summary(x1)
quantile(x1, seq(0,1,0.1))
quantile(x1, c(.1,.5,.8))
stem(x1)

#MATRIX----------
100:111
length(100:111)
matrix(1, ncol=3, nrow=4)
(m1 = matrix(100:111, nrow=4))
(m2= matrix(100:111, ncol = 3, byrow=T))


x = 101:124
length(x)
matrix(x, ncol=6)
class(m1)
attributes(m1)
dim(m1)
m1


#access elements of a matrix

m1[1,]
m1[,-1] #remove 1st column
m1[1, 2:3]
m1[c(1,3),]
m1[,-c(1,3), drop=F]
m1[m1> 105 & m1<108]

#names of cols and rows

m1
paste("C", "D", sep = "-")
paste("C", 1:3, sep='')
(colnames(m1) = paste ("C", 1:3, sep=''))
m1
(rownames(m1) = paste("R", 1:4, sep=''))
m1
attributes(m1)
m1[,c('C1', 'C3')]

#Vector to Matrix

(m3 = 1:24)
dim(m3) = c(6,4)
m3

#access elements
m2
m2[1,]
m2[c(1,3,4),]
m2[c(TRUE,F,T,F), c(F,T,T)] #logical indexing


#modify vector

m2
m2[2,2]
m2[2,2] = 10
m2[m2>107] = 666
m2

rbind(m2, c(50,60,70))
m2
cbind(m2, c(55,65,75,85))
rbind(m2,m2)
cbind(m2,m2)

#row and columnwise summary


m1
m1[1:12]
m1[seq(1,12,2)]
m1
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)

t(m1) #transpose
m1
sweep(m1, MARGIN =1, STATS= c(2,3,4,5), FUN="+") #row wise
sweep(m1, MARGIN =2, STATS = c(2,3,4), FUN="*") #column wise


#add margins

?addmargins
addmargins(m1,margin=1,sum) #col wise
addmargins(m1,1, sd) #col wise

addmargins(m1,2,mean) #row wise
addmargins(m1, c(1,2),mean) #row and col wise

addmargins(m1, c(1,2), list(list(mean,sum,max), list(var,sd))) #row and col wise function


#array------
length(100:123)
4*3*2



#DataFrame----
#create vectors to be combines into DF

(rollno = 1:30)
(sname = paste('student', 1:30, sep=''))
(gender = sample(c('M', 'F'), size=30, replace=T, prob=c(.7,.3)))

table(gender)

prop.table(table(gender))

(marks1= floor(rnorm(30,mean=50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))

rollno; sname; gender
marks1; marks2; course

#create DF

df1=data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1, n=3)
tail(df1)
class(df1)
summary(df1)
nrow(df1)
dim(df1)
length(df1)
df1$course
df1$gender= factor(df1$gender)
df1$course = factor(df1$course)
#df1$sname=as.character(df1$sname)
str(df1)
summary(df1)
boxplot(df1$marks1)
boxplot(marks1 ~ gender, data=df1)
boxplot(marks1 ~ gender + course, data=df1)
df1
df1$gender #one column
head(df1[,c(2,4)]) #multiple columns
df1[1:10,] #select rows, all columns

df1[1:5, 1:4]


#as per conditions

df1[ marks1 > 50 & gender =='F', c('rollno', 'sname','gender', 'marks1')]
df1[ marks1 > 50 & gender =='F', c(1,2)]
df1[ marks1 >50 | gender=='F', ]

names(df1)
dim(df1)

aggregate(df1$marks1, by=list(df1$gender), FUN = sum)
aggregate(marks1 ~ gender, data=df1, FUN=max)
aggregate(cbind(marks1, marks2) ~ gender + course, data=df1, FUN=mean)


(df2= aggregate(cbind(marks1, marks2)~gender + course, data=df1, FUN=mean))
df2


#Factor-----

(grades= sample(c('A','B','C','D'), size = 30, replace = T, prob=c(.3,.2,.4,.1)))
summary(grades)
table(grades)
(gradesFactor = factor(grades))
summary(gradesFactor)

(gradesFactorOrdered = factor(grades, ordered=T))
summary(gradesFactorOrdered)


(gradesFactoredOrderedLevels = factor(grades, ordered= T, levels=c('D','C','B','A')))
summary(gradesFactoredOrderedLevels)


pie(c(10,15,17))
pie(summary(gradesFactoredOrderedLevels))
barplot(summary(gradesFactoredOrderedLevels), col=1:4)


class(grades)
class(gradesFactorOrdered)
class(gradesFactoredOrderedLevels)
