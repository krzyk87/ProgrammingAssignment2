## Set of functions that compute the inverse of a matrix with the use of cache memory

## Function makeCacheMatrix that contains a list of funtions to:
# 1. set/get value of the matrix
# 2. set/get value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    # set default value of matrix 'mat'
    mat <- NULL
    
    # function to set the data
    set <- function(y) {
        x <<- y
        mat <<- NULL
    }
    # function to get the data
    get <- function() x
    
    # function to set the matrix inverse
    setInverse <- function(solve) mat <<- solve
    # function to get the matrix inverse
    getInverse <- function() mat
    
    # return the list of funcitons
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Function cacheSolve that calculates the inverse of the matrix using functions from makeCacheMatrix

cacheSolve <- function(x, ...) {
    # get and return the inversed matrix stored in the memory
    mat <- x$getInverse()
    if(!is.null(mat)){
        message("getting cached data")
        return(mat)
    }
    
    # if marix isn't stored in memory, then:
    # 1. get the data
    data <- x$get()
    # 2. calculate the inverse of a matrix
    mat <- solve(data, ...)
    # 3. set the data
    x$setInverse(mat)
    
    # 4. return the inversed matrix
    mat
}
