#decision trees

#types - regression  &  classification
iris
head(iris)
library(rpart)
library(rpart.plot)
library(dplyr)
#Model
rtree = rpart(Sepal.Length ~ . , data=iris, method='anova' )
rtree
rpart.plot(rtree, cex=.8, nn=T, fallen.leaves=T)


#classification
ctree=rpart(Species ~ ., data = iris, method = 'class')
#fit <- rpart(survived ~ ., data = data, method = 'class')
#fit
rpart.plot(ctree, extra = 104, cex=.8,nn=T) #plot
printcp(ctree)
ctreeprune1 = prune(ctree, cp=.01)
ctreeprune1
(ndata = sample_n(iris,3))
predict(ctree, newdata = ndata, type='prob')

