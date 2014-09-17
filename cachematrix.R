## function for creating object can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function(){
                x
        }
        setinverse <- function(inverse){
                m <- inverse
        }
        getinverse <- function(){
                m
        }
        m
}


## Get and check the returned matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        gm <- x$getinverse() # get matrix 
        if(!all(m == gm)){ # check if the matrix is changed or not
                message("getting inverse matrix")
                return(gm)
        }
        # if not changed, do solove() and return the value
        m <- solve(gm)
        x$setinverse(m)
        m 
}
