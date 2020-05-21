## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##they are done in partial fulfillment of the R programming course
makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  
  setinverse<-function(inverse)inv<<-inverse
  getinverse<-function()inv
  list(set=set, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
##it helps to get the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-get$inverse()
  if(!is.null(inv)){
    message("getting cache data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinverse(inv)
  inv
  }
