## library
library(mvtnorm)
## setting a seed to reproduce the same result set.seed(123)
sigma <- matrix(c(4,2,2,3), ncol=2)
x <- rmvnorm(n=500, mean=c(0,0), sigma=sigma)

plot(x)

pca<- princomp(x)
pca

# find basis

pca$loadings

T <- pca$loadings
D <- inv(T) %*% t(x) 
y <- t(D)
plot(y)

