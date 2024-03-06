library(factoextra)
library(cluster)

data <- USArrests
print(head(data))

#(a) Use a gap statistic plot to determine the optimal number of clusters for k-means clustering.

# "elbow method"
# elbow_plot <- fviz_nbclust(data, FUNcluster=kmeans, method="wss")
# print(elbow_plot)

# "gap statistic method" produces k=2
# resource: https://uc-r.github.io/kmeans_clustering#gap
gap <- clusGap(data, kmeans, K.max=10, B=500)
print(gap, method="firstmax")
gap_plot <- fviz_gap_stat(gap)
print(gap_plot)

#(b) Create a visualization of the clusters formed via k-means clustering.

K2 <- kmeans(x=data, centers=2)
K2_plot <- plot(data$Murder, data$Assault, col=K2$cluster)

# K3 <- kmeans(x=data, centers=3)
# K3_plot <- plot(data$Murder, data$Assault, col=K3$cluster)
