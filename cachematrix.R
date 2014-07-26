## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##  returns list containing functions that sets and gets the matrix and sets and gets the inverse to the matrix
makeCacheMatrix <- function(x = matrix()) {
        m <<- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inv) m <<- inv
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
    
}


## Write a short comment describing this function
## Will retrieve the inverse from the passed list or if it does not exist will solve for the inverse of the matrix, store it in the list and return it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       m <- x$getinv()
       if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinv(m)
        m
}
