library(matlib)
A <- matrix(c(1, 3, 2, 1, 2, 5, -2, -3, 2, 2, -3, -3, -4, -2, -1, 4), nrow = 4, ncol = 4, byrow=TRUE)
M <- cbind(A, diag(4))
library(pracma)
R <- rref(M)
Ainv <- R[, 5:8]
Ainv
inv(A)
