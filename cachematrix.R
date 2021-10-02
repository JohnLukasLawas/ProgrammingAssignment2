makeCacheMatrixthemovie <- function(ekis = matrix()) {
        baog <- NULL
        setter <- function(y) {
                x <<- y
                baog <<- NULL
        }
        get <- function() x
        
        setmean <- function(mean) baog <<- mean
        getmean <- function() baog
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}




cacheSolvent <- function(ekis, ...) {
         baog <- x$getmean()
        if(!is.null(baog)) {
                message("getting cached data")
                return(baog)
        }
        data <- x$get()
        baog <- mean(data, ...)
        x$setmean(baog)
        baog
}
