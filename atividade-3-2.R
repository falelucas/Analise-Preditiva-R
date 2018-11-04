library(readxl)
Crimes <- read_excel("dados/Crimes.xlsx")
View(Crimes)


library(cluster)
hc <- hclust(dist(Crimes[,-1]), method ='average')
plot(hc)


clusterCut <- cutree(hc, 3)
rect.hclust(hc, k=3, border="red")


clusplot(Crimes[,-1], clusterCut,  main='Represetação Gráfica 2D - Solução com 3 Clusters',color=TRUE, shade=TRUE, labels=2, lines=0)


Crimes$Grupos <- clusterCut
Grupo_ordenado <- Crimes[order(Crimes$Grupos),]
somente_grupo <- subset(Grupo_ordenado,select = c(STATE, Grupos))

View(somente_grupo)