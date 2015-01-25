## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) #defines what the 
  {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv        ## Return a matrix that is the inverse of 'x'
}


x = rbind(c(1, -1/4s), c(-1/4, 1))
m = makeCacheMatrix(x)
m$get()
cacheSolve(m)
cacheSolve(m)
