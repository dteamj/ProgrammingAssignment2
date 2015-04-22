## Computing the inverse of a square matrix 
## Matrix inversion is usually a costly computation.
## Here we cache the inverse of a matrix if it is allready computed 

## initializing the matrix and add the cache 
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function(){
    x
  }
  setinv <- function(inv){
    i <<- inv
  }
  getinv <- function(){
    i
  }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## computes or reads the inverse of a matrix store the result in the caches
cacheSolve <- function(x, ...) {
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}
