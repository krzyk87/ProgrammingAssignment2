# load function code to memory
source("cachematrix.R")

# create a matrix
myMatrix <- matrix(c(1:4),2,2)

# pass the matrix to makeCacheMatrix function
myCache <- makeCacheMatrix(myMatrix)

# pass the cached matrix to cacheSolve function
cacheSolve(myCache)
