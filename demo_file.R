# matrix operations
v1 <- c(2, -1, 3) 
v2 <- c(-1, 0, 4) 
v1 + v2 
A<- matrix(c(3, 0, -5, -1, -3, 4), nrow = 2, ncol = 3, byrow = TRUE) 
B <- matrix(c(-5, 5, 2, 1, -2, 0), nrow = 2, ncol = 3, byrow = TRUE) 
A+B
A<- matrix(c(3, 0, -5, -1, -3, 4), nrow = 2, ncol = 3, byrow = TRUE) 
-3*A
v1 <- c(2, -1, 3) 
v2 <- c(-1, 0, 4) 
v1 %*% v2 

A <- matrix(c(3, 0, -5, -1, -3, 4), nrow = 2, ncol = 3, byrow = TRUE)
B <- matrix(c(-5, 5, 2, 1, -2, 0), nrow = 3, ncol = 2, byrow = TRUE) 
A%*%B
A <- matrix(c(4, -1, -5, 0, 1, -2), 2, 3, byrow = TRUE) 
t(A)

A <- matrix(c(1,-2,-1,2,3,2,3,-2,1), nrow = 3, ncol = 3) 
inv(A) 

# linear systems

install.packages("matlib", dependencies = TRUE)
library(matlib)
#2 by 2
A<-matrix(c(1,1,2,1),2,2,byrow = TRUE)
b<-matrix(c(4,5),2,1,byrow = TRUE)
solve(A,b)
plotEqn(A,b)

# 3 by 3

A<-matrix(c(1,2,3,-1,3,-2,-1,2,1),3,3,byrow = TRUE)
b<-matrix(c(6,-1,2),3,1,byrow = TRUE)
Solve(A,b)
plotEqn3d(A,b,xlim=c(0,4), ylim=c(0,4))

# no solution
A<-matrix(c(3,2,1,2,1,1,6,2,4),3,3,byrow = TRUE)
b<-matrix(c(3,0,6),3,1,byrow = TRUE)
Solve(A,b)
plotEqn3d(A,b,xlim=c(0,4), ylim=c(0,4))


# chemical equation, infinitely many solutions
library(MASS)
A<-matrix(c(2,0,-1,0,4,0,0,-1,0,2,-2,-1),3,4,byrow = TRUE)
b<-matrix(c(0,0,0),3,1,byrow = TRUE)
Solve(A,b)

Null(t(A))
2/0.164399 * Null(t(A))


A<-matrix(c(1,1,0,0,0,0,1,1,1,0,1,0,0,1,0,1),nrow=4,ncol=5,byrow = TRUE)
A
b<-matrix(c(475,489,542,422),nrow=4,ncol=1)
b
Solve(A,b)


plotEqn3d(A,b)
A<-matrix(c(1,2,1,1,4,5,2,5,3),nrow=3,ncol=3)

b<-c(4,5,1)

Solve(A,b)

plotEqn3d(A,b)

# Echelon form 
A<-matrix(c(0,-1,1,0,1,1,0,1,3,-4,2,0,-1,0,4,-4),4,4)
b <- c(1,1,5,-2)
showEqn(A,b)
echelon(A,b,verbose=T,fractions=T)


library(matlib)
A <- matrix(c(1,-2,-1,2,3,2,3,-2,1), nrow = 3, ncol = 3) 
solve(A) 



# Vector space


library(rgl)
# Create some dummy data
dat <- replicate(2, 1:3)
dat
# Initialize the scene, no data plotted
plot3d(dat, type = 'n', xlim = c(-1, 8), ylim = c(-1, 8), zlim = c(-10, 20), xlab = '', ylab = '', zlab = '')
# Define the linear plane
planes3d(2, -3, -1, 0, col = 'red',alpha = 0.1) 
# Define the origin
points3d(x=0, y=0, z=0)

# Null space

library(pracma)
A <- matrix(c(1, -1, 4, 0, 2, 0, -1, 0, -1, -1, 5, 0), nrow=3, ncol=4, byrow=TRUE)
rref(A)


#Vector spanning null space

library(MASS)
A <- matrix(c(1, -1, 4, 2, 0, -1, -1, -1, 5), nrow=3, ncol=3, byrow=TRUE)
Null(t(A))


# Row space
library(pracma)
A <- matrix(c(1, -1, 4, 2, 0, -1, -1, -1, 5), nrow=3, ncol=3, byrow=TRUE)
rref(A)


# coordinate

library(pracma)
B <- matrix(c(1, 0, 0, 1, 1, 0, 1, 1, 1), 3, 3, byrow = TRUE) 
v <- c(2, 4, 0)
inv(B) %*% v


#eigen value

A <- matrix(c(2, 1, 1, 2), 2, 2)
eigen(A)


# Inner product

u <- c(1, 5, 0) 
v <- c(1, 0, 3)


sum(u * v) # inner product


sqrt(sum(v * v)) # length of vector

