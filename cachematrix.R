

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
        x <<- y
        m <<- NULL
    }
get <- function() x
set_inverse <- function(merse) m <<- merse
get_inverse <- function() m
list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
m <- x$get_inverse()
    if(!is.null(m)) {
        message("getting cached data.")
        return(m)
	}
data <- x$get()
m <- solve(data)
x$set_inverse(m)
return(m)
}
