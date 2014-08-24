## Two functions to cache the inverse of any invertible matrix

## fun1:makeCacheMatrix creates a special matrix object that can cache its inverse 
makeCacheMatrix <- function(x = matrix()) {

  #Initialise the inverse property as empty
  I <- NULL
  
  #Function/method to set the matrix
  set <- function(y) {
    x <<- matrix
    I <<- NULL
  }
  
  
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
  
}
