library(mvtnorm)
library(ggplot2)
library(matlib)
## Standard deviation
sigma <- matrix(c(4,2,2,3), ncol = 2, nrow = 2) 
## Mean
mu <- c(1, 2)
n <- 1000
set.seed(123)
x <- rmvnorm(n = n, mean = mu, sigma = sigma)
d <- data.frame(x)
head(d)
p2 <- ggplot(d, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p2
y <- x - mu
E <- eigen(sigma)
E$vectors
y <- y %*% t(inv(E$vectors))
dd <- data.frame(y)
p3 <- ggplot(dd, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p3
