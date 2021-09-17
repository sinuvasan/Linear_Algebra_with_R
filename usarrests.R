df <- USArrests
head(df)
df <- na.omit(df)
df <- scale(df)
d <- dist(df, method = "euclidean")
hc <- hclust(d)

sub_grp <- cutree(hc, k = 4)
library(ggplot2)
library(factoextra)

fviz_cluster(list(data = df, cluster = sub_grp))



library(ISLR)
data(Auto)
summary(Auto)
auto <- Auto[,1:7] 
summary(auto)
new.data <- Auto[, 1:8]
new.data$origin <- as.character(new.data$origin) 
summary(new.data)
