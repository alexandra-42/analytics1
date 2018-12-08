#vector

#ND with mean 80, sd 10, 100 values

sales = rnorm(100,mean=80,sd=10)
sales
#trunc, round, floor, ceiling
sales = trunc(sales)
sales
summary(sales)
boxplot(sales)
mean(sales)
median(sales)
hist(sales)
plot(density(sales))
#10-50
range(sales)
#matrix
m1 = matrix(100:123, ncol=2)
m1
colSums(m1)
colMeans(m1)
m1[,1]
colnames(m1) = c('A','B')
head(m1)
tail(m1)



#Df
(sname = paste('Student', 1:30, sep='_'))
(marks= trunc(runif(n=30,min=50,max=90)))
runif(30)
(gender = sample(c('M', 'F'), replace = T, size = 30, prob =c(.7,.3)))
?runif
df1= data.frame(sname, marks, gender)
head(df1)

library(dplyr)
df1 %>% group_by(gender) %>% summarise(mean(marks), n(), min(marks), max(marks), sd(marks))

#name, marks (descending order); no gender
df1[order(df1$marks, decreasing = T)), c('sname', 'marks')]
df1[order(df1$marks, decreasing = T)), -3] #-3 removes gender which is at the 3rd position

?arrange
df1 %>% select(sname, marks) %>% arrange(desc(marks))
?select

df1 %>% sample_n(3)
df1 %>% sample_frac(.3)
