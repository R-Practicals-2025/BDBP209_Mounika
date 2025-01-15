#Exercise 4 
#Vectors


#(i)
vec <- c(4,7,6,5,6,7)
print(vec)
#[1] 4 7 6 5 6 7
class(vec)
#[1] "numeric"
length(vec)
#[1] 6
min(vec)
#[1] 4
max(vec)
#[1] 7


#(ii)
vec <- scan()


#(iii)
vec[4]
#[1] 5


#(iv)
ind <- c(2,3,6)
print(ind)
#[1] 2 3 6
vec[ind]
#[1] 7 6 7
vec[c(2,3,6)]
#[1] 7 6 7


#(v)
vec[-1]
#[1] 7 6 5 6 7


#(vi)
vec[-length(vec)]
#[1] 4 7 6 5 6


#(vii)
trim <- function(x) {
  sorted_x <- sort(x)
  trimmed <- sorted_x[-c(1, 2, length(x), length(x) - 1)]
  return(trimmed)
}

trim(vec)
#[1] 6 6


#(viii)
vec[1:3]
#[1] 4 7 6
vec[seq(2,length(vec),2)]
#[1] 7 5 7

#another way 
vec[1:length(vec)%%2==0]


#(ix)
x <- 0:10
print(x)
# Option 1
sum(x[x < 5])
#[1] 10
# Option 2
sum(ifelse(x < 5, x, 0))
#[1] 10


#(x)
sum(sort(x, decreasing = TRUE)[1:3])


#(xi)
which.max(x)  
which.min(x)   


#(xii)
cbind(1:10,10:1)
#     [,1] [,2]
#[1,]    1   10
#[2,]    2    9
#[3,]    3    8
#[4,]    4    7
#[5,]    5    6
#[6,]    6    5
#[7,]    7    4
#[8,]    8    3
#[9,]    9    2
#[10,]   10    1
rbind(1:10,10:1)
#[,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#[1,]    1    2    3    4    5    6    7    8    9    10
#[2,]   10    9    8    7    6    5    4    3    2     1


#(xiii)
X <- c(1:10)
X
#[1]  1  2  3  4  5  6  7  8  9 10

Y <- c(1:10*5)
Y
#[1]  5 10 15 20 25 30 35 40 45 50

X*Y
#[1]   5  20  45  80 125 180 245 320 405 500

X+Y
# [1]  6 12 18 24 30 36 42 48 54 60

X/Y
# [1] 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2

X^Y
# [1] 1.000000e+00 1.024000e+03 1.434891e+07 1.099512e+12
#[5] 2.980232e+17 2.210739e+23 3.788187e+29 1.329228e+36
#[9] 8.727964e+42 1.000000e+50

log(X)
# [1] 0.0000000 0.6931472 1.0986123 1.3862944 1.6094379 1.7917595
# [7] 1.9459101 2.0794415 2.1972246 2.3025851

exp(Y)
#[1] 1.484132e+02 2.202647e+04 3.269017e+06 4.851652e+08
#[5] 7.200490e+10 1.068647e+13 1.586013e+15 2.353853e+17
#[9] 3.493427e+19 5.184706e+21


 
#Exercise 5
#Matrices/Dataframes/Arrays

y <- 1:24
dim(y) <- c(2,3,4)
y
#, , 1

#[,1] [,2] [,3]
#[1,]    1    3    5
#[2,]    2    4    6

#, , 2

#[,1] [,2] [,3]
#[1,]    7    9   11
#[2,]    8   10   12

#, , 3

#[,1] [,2] [,3]
#[1,]   13   15   17
#[2,]   14   16   18

#, , 4

#[,1] [,2] [,3]
#[1,]   19   21   23
#[2,]   20   22   24
 
#Changing the dimentions
dim(y) <- c(3, 2, 4)
print(y)

#, , 1

#[,1] [,2]
#[1,]    1    4
#[2,]    2    5
#[3,]    3    6

#, , 2

#[,1] [,2]
#[1,]    7   10
#[2,]    8   11
#[3,]    9   12

#, , 3

#[,1] [,2]
#[1,]   13   16
#[2,]   14   17
#[3,]   15   18

#, , 4

#[,1] [,2]
#[1,]   19   22
#[2,]   20   23
#[3,]   21   24

#(i)
X <- matrix(c(1, 0, 0, 0, 1, 0, 0, 0, 1), nrow = 3)
print(X)
#     [,1] [,2] [,3]
#[1,]    1    0    0
#[2,]    0    1    0
#[3,]    0    0    1

#(ii)
vector <- c(1, 2, 3, 4, 4, 3, 2, 1)

# Convert vector to matrix using `matrix()`
V <- matrix(vector, byrow = TRUE, nrow = 2)
print(V)
#     [,1] [,2] [,3] [,4]
#[1,]    1    2    3    4
#[2,]    4    3    2    1

# Convert vector to matrix using `dim()`
dim(vector) <- c(4, 2)
print(vector)
#     [,1] [,2]
#[1,]    1    4
#[2,]    2    3
#[3,]    3    2
#[4,]    4    1
is.matrix(vector)  # Check if it's now a matrix
#[1] TRUE


#Exercise 5
#Vector function
#(i)
vec <- c(5, 8, 2, 9, 3, 7)

# Common functions
min(vec)       # Minimum value: 2
max(vec)       # Maximum value: 9
sum(vec)       # Sum of all elements: 34
range(vec)     # Range of values: 2 9
sort(vec)      # Sorted vector: 2 3 5 7 8 9


#(ii)

M <- matrix(1:9, nrow = 3, byrow = TRUE)
print(M)
#[,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
#[3,]    7    8    9

# Calculate mean for each column
colMeans(M)
#[1] 4 5 6

#(iii)
X <- c(1, 2, 3, 4)
Y <- c(5, 6, 7)

# Outer product
Z <- X %o% Y
YoX <- Y %o% X

print(Z)
#     [,1] [,2] [,3]
#[1,]    5    6    7
#[2,]   10   12   14
#[3,]   15   18   21
#[4,]   20   24   28

print(YoX)
#     [,1] [,2] [,3] [,4]
#[1,]    5   10   15   20
#[2,]    6   12   18   24
#[3,]    7   14   21   28

Z <- X[1:4] %o% Y[1:3]
Z
#     [,1] [,2] [,3]
#[1,]    5    6    7
#[2,]   10   12   14
#[3,]   15   18   21
#[4,]   20   24   28

YoX <- Y[1:3] %o%X[1:4]
YoX
#     [,1] [,2] [,3] [,4]
#[1,]    5   10   15   20
#[2,]    6   12   18   24
#[3,]    7   14   21   28

t(Z) #transpose
#[,1] [,2] [,3] [,4]
#[1,]    5   10   15   20
#[2,]    6   12   18   24
#[3,]    7   14   21   28

t(YoX)
#     [,1] [,2] [,3]
#[1,]    5    6    7
#[2,]   10   12   14
#[3,]   15   18   21
#[4,]   20   24   28

X <- c(1, 2, 3, 4)
Y <- c(5, 6, 7,8)
X %*% Y #dot product
#[,1]
#[1,]   70

X <- c(1, 2, 3, 4)
Y <- c(5, 6, 7,8 )
sum(X*Y) #another way to carry out dot product
#[1] 70

crossprod(X[1:4],Z)
#[,1] [,2] [,3]
#[1,]  150  180  210
diag(4) #identity matrix
#[,1] [,2] [,3] [,4]
#[1,]    1    0    0    0
#[2,]    0    1    0    0
#[3,]    0    0    1    0
#[4,]    0    0    0    1

#(iv)
class(X)
#[1] "numeric"










