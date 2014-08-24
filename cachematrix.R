## Two functions to cache the inverse of any invertible matrix

## fun1:"makeCacheMatrix" creates a special matrix object that can cache its inverse 
makeCacheMatrix <- function(x = matrix()) {

  #Initialise the inverse property as empty
  I <- NULL
  
  
  #Function/method to set the matrix
  set <- function(matrix) {
    x <<- matrix
    I <<- NULL
  }
  
  
  #Function/method to get the matrix
  get <- function() {
    x
    #this returns the matrix
  }
  
  
  #Function/method to set the inverse of the matrix
  setInverse <- function(inverse) {
    I <<- inverse
  }
  
  
  #Function/method to get the inverse of the matrix
  getInverse <- function() {
    I
    #This returns the inverse property
  }
  
  
  #Return a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}




## Compute the inverse of the special matrix returned by fun1:"makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the fun2:"cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  
  #Return a matrix that is the inverse of 'x'
  I <- x$getInverse()
  
  
  #Check to see if inverse has been calculated, if so,
  #only return the inverse
  if( !is.null(I) ) {
    message("getting cached data")
    return(I)
  }
  
  
  #Get the matrix from our special matrix object
  data <- x$get()
  
  
  #Calculate the inverse using the solve function
  I <- solve(data, ...)
  
  
  #Set the inverse to the special object
  x$setInverse(I)
  
  
  #Return the inverse of the matrix initially required
  I
}

