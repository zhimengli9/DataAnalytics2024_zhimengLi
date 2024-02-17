set.seed(12345)
par(mar=rep(0.2,4))
data_Matrix<-matrix(rnorm(400),nrow=40)
image(1:10,1:40,t(data_Matrix)[,nrow(data_Matrix):1])

par(mar=rep(0.2,4))
heatmap(data_Matrix)

set.seed(678910)
for(i in 1:40){
  coin_Flip<-rbinom(1,size=1, prob=0.5)
  if(coin_Flip){
    data_Matrix[i,]<-data_Matrix[i,]+rep(c(0,3),each=5) 
  }
}
par(mar=rep(0.2,4))
image(1:10,1:40,t(data_Matrix)[,nrow(data_Matrix):1])

par(mar=rep(0.2,4))
heatmap(data_Matrix)



install.packages("class")
library(class)
abalone <-read.csv('/Users/leezh1m9/Desktop/abalone.csv')
View(abalone)
set.seed(123) # for reproducibility
train_indices <- sample(1:nrow(abalone), 0.7 * nrow(abalone)) # 70% for training
train_data <- abalone[train_indices, ]
test_data <- abalone[-train_indices, ]
k <- 5 # specify the number of neighbors
predicted <- knn(train = train_data[, -1], test = test_data[, -1], cl = train_data$Rings, k = k)
accuracy <- mean(predicted == test_data$Rings)
print(paste("Accuracy:", accuracy))



data("iris")
View(iris)
iris_df <- iris[, -5]
set.seed(123)
k <- 3  # Number of clusters (you can choose this)
kmeans_result <- kmeans(iris_df, centers = k, nstart = 20)
cluster_assignments <- kmeans_result$cluster
result_table <- table(iris[, 5], cluster_assignments)
print(result_table)
