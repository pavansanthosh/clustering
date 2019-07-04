#hierarchial clustering

dataset=read.csv("Mall_Customers.csv")
dataset=dataset[4:5]

#building the dendogram for finding the optimal number of clusters
dendrogram=hclust(dist(dataset,method = 'euclidean'),method = 'ward.D')
plot(dendogram,main=paste('dendrogram'),xlab='customers',ylab='euclidean dist')

#fitting hierarchial clustering
hc=hclust(dist(dataset,method = 'euclidean'),method = 'ward.D')
y_hc=cutree(hc,5)

#visualising the clusters
library(cluster)
clusplot(dataset,
     y_hc,
     lines=0,
     shade=T,
     color=T,
     labels=2,
     plotchar=F,
     span=T,
     main=paste('hierarchial clustering'),
     xlab='income',
     ylab='spend')