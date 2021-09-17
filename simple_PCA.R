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

# Inner product

u <- c(1, 5, 0) 
v <- c(1, 0, 3)


sum(u * v) # inner product


sqrt(sum(v * v)) # length of vector

