iris1 <- iris
iris1$Species <- NULL
(kmeans.result <- kmeans(iris1,3))
plot(iris1[c("Sepal.Length","Sepal.Width")],col=kmeans.result$cluster)
points(kmeans.result$centers[,c("Sepal.Length","Sepal.Width")],col=1:3,pch=8,cex=2)
