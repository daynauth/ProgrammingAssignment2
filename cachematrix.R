## The program creates two functions
## functions do

## makeC

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i <- NULL
	}

	get <- function() x

	setInverse <- function(inverse) i <<- inverse

	getInverse <- function() i

	list(set = set, get = get, setInverse = setInverse, 
		getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	i <- x$getInverse()
	if(!is.null(i)){
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data)
	x$setInverse(i)
	i
}
