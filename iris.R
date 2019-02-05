iris<-read.csv("Iris.csv")
summary(iris)
str(iris)
table(iris$iris)
round(prop.table(table(iris$iris)) * 100,digits = 1)
ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.7, 0.3))
trainData <- iris[ind==1,]
testData <- iris[ind==2,]
trainData1 <- trainData[-5]
testData1 <- testData[-5]
dim(trainData)
iris_train_labels <- trainData$iris 
dim(iris_train_labels)
class(iris_train_labels)
iris_test_labels <- testData$iris
dim(iris_test_labels)
library(class)
trainData1<-trainData1[,!(names(trainData1) %in% c("X","X.1","X.2","X.3"))]
iris_test_pred1 <- knn(train = , test = testData1, cl= iris_train_labels,k = 3,prob=TRUE) 
install.packages("class")
trainData1
iris_test_pred1 <- knn(train = trainData1, test = testData1, cl= iris_train_labels,k = 3,prob=TRUE) 
install.packages("gmodels")
library(gmodels)
CrossTable(x = iris_test_labels, y = iris_test_pred1,prop.chisq=FALSE) 
