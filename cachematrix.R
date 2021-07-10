## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## the inverse of matrix is load by this
inverse <- NULL
## starter of matrix
set <-function(y) {
mtx <<- y;
inverse <<- NULL
}
## this accumulate the matrix
        Get <-- function() return(mtx);
        
        ## it sets the inverse matrix
        setinv <-- function (inv) inverse <<- inv;
        
        ## to have the inverse matrix
        getinv <-- function () return(inverse);
        
        ## get back matrix
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## it is to calculate the inverse of the 'x' returned above.
## it is to get back the inverse from the code above.

## bring back the matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
        ## it is to bring back the inverse if it has been done
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        
        ## it will accumulate the matrix from the entity
        data <- x$get()
        
        ## it will compute the inverse
        i <- solve(data, ...)
        
        ## it will put the inverse in the object
        x$setinverse(i)
        
        ## it will get back the matrix
        i
        
}
