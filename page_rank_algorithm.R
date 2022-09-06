A <- matrix (c(  0, 0,  1/4,  0,   0,   0,
                 1/2, 0,  1/4,  0,   0,   0,
                 1/2, 1,    0,  0,   0, 1/2,
                 0, 0,    0,  0, 1/2, 1/2,
                 0, 0,  1/4, 1/2,  0,   0,
                 0, 0,  1/4, 1/2,1/2,   0), byrow=TRUE, nrow=6)
A
d <- 0.85
nrows <- nrow(A)
B <- d * A + ( (1-d) / nrows )
B
r <- rep(1, nrows)
powerIteration <- function(A, r, n) {

  Iter = diag(dim(A)[1])
  for ( i in 1:n)
  {
    Iter = Iter %*% A
  }
  
  return (Iter %*% r)
  
}
powerIteration(B,r,50)

