## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  # initialization
  i <- NULL
  
  #  set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  # get the matrix
  get <- function() {
    m
  }
  
  # inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  # get the inverse of the matrix
  getInverse <- function() {
    i
  }
  
  # return a list of methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  # return the inverse of x
  m <- x$getInverse()
  
  # return it if it is already set
  if( !is.null(m) ) {
    message("get cache data")
    return(m)
  }
  
  # get matrix from object
  data <- x$get()
  
  # calculate the inverse by matrix multiplication
  m <- solve(data) %*% data
  
  # set the inverse
  x$setInverse(m)
  
  # the matrix
  m
}
