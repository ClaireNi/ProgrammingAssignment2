




## makeCacheMatrix 




makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL

  set <- function(m) {

    x <<- m

    inv <<- NULL}

  get <- function() x

  setinv <- function(invert) inv <<- invert

  getinv <- function() inv

  list(set = set, get = get,

       setinv = setinv,

       getinv = getinv)}







## cacheSolve first checks to see if the inverse has already been cached and returns it if so

## otherwise it will run the solve function and caches the result for further use




cacheSolve <- function(x, ...) {

  inv <- x$getinv()

  if(!is.null(inv)) {

    message("cached data")

    return(inv) }

  data <- x$get()

  inv <- solve(data, ...)

  x$setinv(inv)

  inv}

