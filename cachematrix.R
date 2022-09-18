
# create function (makeCacheMatrix) that generates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    matrix_inverse<-NULL
    set<-function(y){
        x<<-y
        matrix_inverse<<-NULL
    }
    get <-function()(x)
    set_inverse<-function(calculate_inverse) (matrix_inverse<<-calculate_inverse)
    get_inverse<-function()(matrix_inverse)
    list(set=set, get=get, 
         set_inverse=set_inverse,
         get_inverse=get_inverse)
    
    }

## compute inverse of matrix
## if inverse has already been calculated it retrieves it from cache

cacheSolve <- function(x, ...) {
    if (!is.null(matrix)) {
        message("retrieving cached data")
        return(matrix)
        }
    solve(x)
    }    
    ## Return a matrix that is the inverse of 'x'

