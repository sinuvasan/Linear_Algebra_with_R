df <- USArrests
head(df)
df <- na.omit(df)
df <- scale(df)
d <- dist(df, method = "euclidean")
hc <- hclust(d)

sub_grp <- cutree(hc, k = 4)
library(ggplot2)
library(factoextra)
