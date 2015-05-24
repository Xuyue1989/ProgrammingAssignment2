## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL 
set <- function(y) { 
x <<- y
m <<- NULL
}
get <- function() { 
x 
}
setmatrix <- function(matrix) { 
m <<- matrix 
}
getmatrix <- function() { 
m 
}
list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       m<-x$getsolve() 
if(!is.null(m)){ 
message("I find it")
return(m)
}
data<-x$solve()
m<-solve(x) 
x$setmatrix(m)
m
} 

