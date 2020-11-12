# wk9-4 : 데이터마이닝과 분류

## 3.iris 데이터 설명
-iris 데이터 (붓꽃 데이터)
1. 꽃잎의 폭과 길이에 대한 4개 변수로 꽃의 종류를


# set working directory
setwd("C:\\Users\\user\\Desktop\\class_R\\data mining\\data")

# read csv file
iris<-read.csv(file="iris.csv")
head(iris)
str(iris)
attach(iris)

# training/ test data : n=150
set.seed(100, sample.kind="Rounding")
N=nrow(iris)
tr.idx=sample(1:N, size=N*2/3, replace=FALSE)
tr.idx

# attributes in training and test
iris.train<-iris[tr.idx,-5]
iris.test<-iris[-tr.idx,-5]

# target value in training and test
trainLabels<-iris[tr.idx,5]
testLabels<-iris[-tr.idx,5]

# to get frequency of class in test set
table(testLabels)
