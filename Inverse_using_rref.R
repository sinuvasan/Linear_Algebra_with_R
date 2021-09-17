library(matlib)
A <- matrix(c(1, 3, 2, 1, 2, 5, -2, -3, 2, 2, -3, -3, -4, -2, -1, 4), nrow = 4, ncol = 4, byrow=TRUE)
A
M <- cbind(A, diag(4))
M
library(pracma)
R <- rref(M)
R
Ainv <- R[, 5:8]
Ainv
inv(A)
