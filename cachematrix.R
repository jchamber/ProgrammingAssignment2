## This is my attempt to complete assignment 2.
## The function should creat a matrix and cache the inverse

## This should create a cool "matrix" object to hold an inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
      x <<- y
      inv <<- NULL
    }
  get <- function () x
  setInverse <- function(inverse) inv <<- inverse 
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInvese)
}

## The cacheSolve function should - I hope - compute the inverse of the special matrix produced.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inv <- x$getInverse()
      if(!is.nul(inv)) {
          message("Getting Cached Data")
          return(inv)
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
}
