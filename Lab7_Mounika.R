#del row from daatframe

#conditionals
a=500
b=100
if (a<b)
  print("a is less than b")

c=1232
d=234
e=22
if(c>d){
  print("c is greater than d")
}


if(a<b){
  print("a<b")
}else if (b<c)
{
  print("b<c")
}


if(a<b){
  print("a<b")
}else if (b<c)
{
  print("b<c")
}else 
  print("R")


for (i in 1:5) print(i**2)
j=0
for (i in 1:5){
  j=j+1
  k=k+2
  print(paste(j,k))
}



fac1 <- function(x) {
  return(x ** 2)
}

fac1(4)   



fac2 <- function(x) {
  f <- 1
  if (x < 2) return(1)  # Base case: Factorial of 0 and 1 is 1
  for (i in 2:x) {
    f <- f * i
  }
  return(f)
}

fac2(4)   



sapply(0:5,fac1)



fac2 <- function(x) {
  f <- 1  # Initialize factorial result
  i <- x  # Set counter to input value
  while (i > 1) {
    f <- f * i  # Multiply f by i
    i <- i - 1  # Decrement i
  }
  return(f)  # Return the factorial result
}

fac2(5)  


fac3 <- function(x) {
  f <- 1  # Initialize factorial result
  t <- x  # Set counter to input value
  repeat {
    if (t < 2) break  # Stop when t is less than 2
    f <- f * t  # Multiply f by t
    t <- t - 1  # Decrement t
  }
  return(f)  # Return the factorial result
}

fac3(3)   



fac4 function(x) max(cumprod(1:4))

fac5 function(x) gamma(x+1)
  
#other way of doing factorial
factorial(x)



pc <- proc.time()
result1 <- fac1(25)
execution_time <- proc.time() - pc
print(execution_time)


x<- runif(1000)
pc<- proc.time()
cmax<- x[1]
for (i in 1000){
  if (x[1] > cmax)cmax <-x[i]}
proc.time()-pc

 
#Lab7
#(i) Creating Matrices and Understanding Row-wise vs. Column-wise Filling
amat <- matrix(seq(10,120,by=10),nrow=3,byrow=TRUE)
print(amat)  

amat2 <- matrix(seq(10,120,by=10),nrow=3,byrow=FALSE)
print(amat) 
# amat is filled row-wise, amat2 is filled column-wise

#(ii) Assigning Row and Column Names
rownames(amat) <- c("R1", "R2", "R3")
colnames(amat) <- c("C1", "C2", "C3", "C4")
print(amat)

#(iii) Creating Matrices and Performing Operations
A <- matrix(c(2,5,7,3, 1,8,9,10, 1,12,5,10, 4,17,15,11), nrow = 4, byrow = TRUE)
B <- matrix(c(12,5,3,17, 1,18,9,10, 1,12,5,10, 4,15,15,4), nrow = 4, byrow = TRUE)
print(A)
print(B)
# Element-wise multiplication
C_elem_mult <- A * B
print(C_elem_mult)
# Matrix multiplication
C_matrix_mult <- A %*% B
print(C_matrix_mult)


#(iv) Inner and Outer Products
X <- c(5, 6, 8, 9)
Y <- c(8, 10, 12, 5)
# Outer product
outer_product <- outer(X, Y)
print(outer_product)
# Inner product (dot product)
inner_product <- sum(X * Y)
print(inner_product)

#(v) Creating a Diagonal Matrix
diag_matrix <- diag(X)
print(diag_matrix)

#(vi) Printing Diagonal Elements of A
diag_elemets <- diag(A)
print(diag_elemets)

#(vii) Creating an Identity Matrix
identity_matrix <- diag(6)
print(identity_matrix)

#(viii) Creating a 3×3 Matrix A
A <- matrix(c(3, 4,-2,4,-5,1,10,-6,5),nrow=3,byrow=TRUE)
print(A)

#(ix) Creating a 3×3 Matrix B
B <- matrix(c(5,-3,13),nrow=3,byrow=TRUE)
print(B)

#(x) Solving AX = B for X
X <- solve(A, B)
print(X)
# Checking the type of X
print(class(X)) #[1] "matrix" "array" 
print(typeof(X)) #[1] "double"
#z<- 1
#z<-1L

#(xi) Finding the Inverse of Matrix A
A_inv <- solve(A)
print(A_inv)
# Checking if A_inv is indeed the inverse
identity_check <- A_inv %*% A
print(identity_check)  # Should be approximately an identity matrix

#(xii) Finding Eigenvalues and Eigenvectors
results <- eigen(A)
print(results)
# Type of results
print(class(results))
print(typeof(results))
# Multiplication of A with the second eigenvector
eigen_vector <- results$vectors[, 2]
result_vector <- A %*% eigen_vector
print(result_vector)
# The result should be the same as eigenvalue * eigenvector
lambda2 <- results$values[2]
expected_result <- lambda2 * eigen_vector
print(expected_result)


#2
#(i) Reading the "BrainCancer.csv" File
brain_cancer <- read.csv("~/Downloads/BrainCancer.csv", header = TRUE)
# View the first few rows
head(brain_cancer)

#(ii) Creating a New Column
brain_cancer$new_column <- brain_cancer$gtv^2 + brain_cancer$time
print(brain_cancer$new_column)
# Print the modified data frame
head(brain_cancer)

#(iii) Printing Row and Column Names
print(rownames(brain_cancer))
print(colnames(brain_cancer))

#(iv) Changing Row Names Using paste
# Assign new row names as "Row-1", "Row-2", etc.
rownames(brain_cancer) <- paste("Row", 1:nrow(brain_cancer), sep = "-")
# Check modified row names
print(rownames(brain_cancer))

#(v)  Remove the column ki
brain_cancer$ki <- NULL
# Print the modified dataframe
head(brain_cancer)


#3
library(readxl)
data2<- read_excel("~/R/R_Labs/pone.0148733.s001.xlsx",sheet=1)
print(dim(data2))
print(colnames(data2))


#4
#(i) Define vectors A and B
A <- c("a", "b", "c", "d", "e")
B <- c("d", "e", "f", "g")
print(A)
print(B)

#(ii) Perform a union operation
union_AB <- union(A, B)
print(union_AB)

#(iii) Perform an intersection operation
intersect_AB <- intersect(A, B)
print(intersect_AB)

#(iv) Perform a difference operation
diff_A_B <- setdiff(A, B)  # Elements in A but not in B
diff_B_A <- setdiff(B, A)  # Elements in B but not in A
print(diff_A_B)
print(diff_B_A)

#(v) Check set equality
sequence_AB <- c(setdiff(A, B), intersect(A, B), setdiff(B, A))
set_equality <- setequal(sequence_AB, union_AB)
print(set_equality)

#(vi) List elements of B present in A (two approaches)
elements_B_in_A <- B[B %in% A]  # Approach 1
elements_B_in_A_2 <- intersect(A, B)  # Approach 2
print(elements_B_in_A)
print(elements_B_in_A_2)

#(vii) Print elements of A present in B
elements_A_in_B <- A[A %in% B]
print(elements_A_in_B)


#5
#(i) Filtering a vector
vec <- c(8,10,12,7,14,16,2,4,9,19,20,3,6)
# (a) Values greater than 12
filtered_1 <- vec[vec > 12]
print(filtered_1)
# (b) Values greater than 10 and less than 20
filtered_2 <- vec[vec > 10 & vec < 20]
print(filtered_2)

#(ii) Handling NA values in an array
A <- c(2,7,29,32,41,11,15,NA,NA,55,32,NA,42,109)
# Remove NA values and filter values < 100
filtered_A <- A[!is.na(A) & A < 100]
print(filtered_A)

#(iii) Replace NA values with 0
A[is.na(A)] <- 0
print(A)


#(iv) Create gene names and gender vectors
GeneNames <- paste0("gene-", 1:7)  # Creates "gene-1" to "gene-7"
Gender <- c("M", "M", "F", "M", "F", "F", "M")
print(GeneNames)
print(Gender)

#(v) Entering data as vectors
result1 <- c(12.3, 11.5, 13.6, 15.4, 9.4, 8.1, 10.0)
result2 <- c(22.1, 25.7, 32.5, 42.5, 12.6, 15.5, 17.6)
result3 <- c(15.5, 13.4, 11.5, 21.7, 14.5, 16.5, 12.1)
result4 <- c(14.4, 16.6, 45.0, 11.0, 9.7, 10.0, 12.5)
result5 <- c(12.2, 15.5, 17.4, 19.4, 10.2, 9.8, 9.0)
result6 <- c(13.3, 14.5, 21.6, 17.9, 15.6, 14.4, 12.0)
result7 <- c(11.0, 10.0, 12.2, 14.3, 23.3, 19.8, 13.4)

#(vi) Creating a dataframe
datframe <- data.frame(GeneNames, Gender, result1, result2, result3, result4, result5, result6, result7)
print(datframe)


#(vii) Adding column names
colnames(datframe) <- c("GeneName", "Gender", "expt1", "expt2", "expt3", "expt4", "expt5", "expt6", "expt7")
print(datframe)

#(viii) Subset with “expt2” values greater than 20
subset_expt2 <- subset(datframe, expt2 > 20)
print(subset_expt2)

#(ix) Subset with only Female gender
subset_female <- subset(datframe, Gender == "F")
print(subset_female)

#(x) Subset with only male gender “expt2” < 30
subset_male <- subset(datframe, Gender == "M" & expt2 <30)
print(subset_male)

#6
#(i) Determine the quadrant of an angle
find_quadrant <- function(angle) {
  angle <- angle %% 360  # Normalize the angle to 0-360 degrees
  
  if (angle > 0 & angle <= 90) {
    print("First quadrant")
  } else if (angle > 90 & angle <= 180) {
    print("Second quadrant")
  } else if (angle > 180 & angle <= 270) {
    print("Third quadrant")
  } else {
    print("Fourth quadrant")
  }
}

find_quadrant(45)   # First quadrant
find_quadrant(150)  # Second quadrant
find_quadrant(225)  # Third quadrant
find_quadrant(315)  # Fourth quadrant


#(ii) Sort three numbers in decreasing order using if-else-if
sort_three_numbers <- function(a, b, c) {
  if (a >= b & a >= c) {
    if (b >= c) {
      print(c(a, b, c))
    } else {
      print(c(a, c, b))
    }
  } else if (b >= a & b >= c) {
    if (a >= c) {
      print(c(b, a, c))
    } else {
      print(c(b, c, a))
    }
  } else {
    if (a >= b) {
      print(c(c, a, b))
    } else {
      print(c(c, b, a))
    }
  }
}

sort_three_numbers(15, 9, 12)   
sort_three_numbers(5, 20, 10)   


#(iii) Calculate ticket cost based on distance and age
calculate_fare <- function(distance, age) {
  # Base fare calculation
  if (distance <= 100) {
    fare <- 100
  } else if (distance <= 1000) {
    fare <- 100 + (distance - 100) * 1.50
  } else {
    fare <- 100 + (900 * 1.50) + (distance - 1000) * 2
  }
  
  # Apply discount based on age
  if (age > 60) {
    fare <- fare * 0.75  # 25% discount
  } else if (age < 6) {
    fare <- fare * 0.50  # 50% discount
  }
  
  print(paste("Ticket cost: Rs.", round(fare, 2)))
}

# Example 
calculate_fare(150, 65)  # Senior citizen, should get 25% off
calculate_fare(200, 5)   # Child, should get 50% off
calculate_fare(1200, 30) # Regular fare


#7
#(i) Function to replace all negative values in a vector with zeros
replace_negatives <- function(vec) {
  vec[vec < 0] <- 0
  return(vec)
}

# Example usage:
vec <- c(3, -5, 7, -2, 0, 4, -1)
replace_negatives(vec)
# Output: [1]  3  0  7  0  0  4  0


#(ii) Function to calculate factorial using Stirling’s approximation
stirling_factorial <- function(n) {
  if (n < 0) {
    stop("Factorial is not defined for negative numbers")
  } else if (n == 0) {
    return(1)
  } else {
    term1 <- sqrt(2 * pi * n)
    term2 <- (n / exp(1))^n
    term3 <- 1 + (1 / (12 * n)) + (1 / (288 * n^2)) - (139 / (51840 * n^3)) - (571 / (2488320 * n^4))
    return(round(term1 * term2 * term3, 4))
  }
}

# Example 
stirling_factorial(5)  # Approximate factorial of 5
stirling_factorial(10) # Approximate factorial of 10


#(iii) Function to sum the digits of a number
sum_digits <- function(n) {
  digits <- as.numeric(unlist(strsplit(as.character(abs(n)), "")))  # Convert number to vector of digits
  return(sum(digits))
}

# Example 
sum_digits(1234)  # Output: 10 (1+2+3+4)
sum_digits(-567)  # Output: 18 (5+6+7)

