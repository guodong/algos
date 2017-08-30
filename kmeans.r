# 载入iris数据集并命名为iris2，移除Species类别属性
iris1 <- iris
iris1$Species <- NULL
# 对iris1数据集调用函数kmeans()，并将结果存储在变量kmeans.result中
(kmeans.result <- kmeans(iris1,3))
# 聚类结果如下
K-means clustering with 3 clusters of sizes 33, 21, 96
Cluster means:
  Sepal.Length Sepal.Width Petal.Length Petal.Width
1     5.175758    3.624242     1.472727   0.2727273
2     4.738095    2.904762     1.790476   0.3523810
3     6.314583    2.895833     4.973958   1.7031250
Clustering vector:
[1] 1 2 2 2 1 1 1 1 2 2 1 1 2 2 1 1 1 1 1 1 1 1 1 1 2 2 1 1 1 2 2 1 1 1 2 1 1 1 2 1 1 2 2 1 1 2 1
[48] 2 1 1 3 3 3 3 3 3 3 2 3 3 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 2
[95] 3 3 3 3 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
[142] 3 3 3 3 3 3 3 3 3
Within cluster sum of squares by cluster:
[1]   6.432121  17.669524 118.651875
(between_SS / total_SS =  79.0 %)
Available components:
[1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss" "betweenss"    "size"         "iter"         "ifault"
# 绘制散点图并标记所有的簇以及簇中心，需要注意的是数据集有四个维度但是绘图只使用前两个维度
plot(iris1[c("Sepal.Length","Sepal.Width")],col=kmeans.result$cluster)
points(kmeans.result$centers[,c("Sepal.Length","Sepal.Width")],col=1:3,pch=8,cex=2)
