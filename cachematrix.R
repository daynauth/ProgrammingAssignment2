## The two functions caches the inverse of the matrix. The first function creates a matrix with cached inverse while the 
## second calculates the inverse if the cached inverse does not exist. 

## makeCacheMatrix takes a normal square matrix as input and outputs a list that includes getter and setter methods
## that gets and sets the matrix and gets and sets the inverse of the matrix. 

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


## This function takes the special matrix as input and returns the inverse of the matrix. It checks the special matrix 
## firstly for the inverse, if the inverse does not exist then the function calculates the inverse. 

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
