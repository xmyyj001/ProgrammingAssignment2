## This project contains 2 functions, which cache matrix in advance,  
## then the other function cache the matrix inverse.

## Below is 1st function to cache matrix, stored in a special class (set,get,setmatr,getmatr) 

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y=matrix()){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  
  setmatr<-function(matr) m<<-matr
  getmatr<-function()m
  
  list(set=set,get=get,setmatr=setmatr,getmatr=getmatr)
}


## Below is 2nd function to cache matrix inverse, m returned.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatr()
  if(!is.null(m))
  {
    message("getting matrix inverse")
    
    return(m)
  }
  data<-x$get()
  m<-solve(data)
  x$setmatr(m)
  m
  }
