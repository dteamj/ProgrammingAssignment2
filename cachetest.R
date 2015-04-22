m <- matrix(c(2,1,3,2), nrow = 2, ncol = 2)
mcm <- makeCacheMatrix(m)
cacheSolve(mcm)
cacheSolve(mcm)
