## Put comments here that give an overall description of what your
## functions do

## This function caches or stores the matrix and  its inverse.

makeCacheMatrix <- function(x = matrix()) {
cache <- NULL
setmatrix <- function(newvalue){
            x<<- newvalue
            cache <<- NULL
}
getmatrix <- function() x
cacheInverse <- function() cache
list(setmatrix= setmatrix, getmatrix= getmatrix, cacheInverse= cacheInverse, getInverse= getInverse)
}


## This function solves for the inverse of the matrix.

cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
        if(! is.null(inverse)){
                message("getting inverse")
                return(inverse) 
}
data <- x$getMatrix()
inverse <- solve(data,...)
x$cacheInverse(inverse)
inverse
        ## Return a matrix that is the inverse of 'x'
}
