## Put comments here that give an overall description of what your
## functions do

## create a matrix


x<- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)

##      [,1]  [,2]
##[1,]  0.50 -1.00
##[2,] -0.25  0.75
## get the inverse of the matrix above

solve(x) 

        ## Return a matrix that is the inverse of 'x'
##      [,1] [,2]
##[1,]    6    8
##[2,]    2    4
