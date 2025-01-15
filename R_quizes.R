
#1

operation <- function(k,n) {
addition <- k+n
subtraction <- k-n
product <- k*n
devision <- k/n
remainder <- k%%n

result <- c(
  addition=addition,
  subtraction =subtraction,
  product =product,
  devision =devision,
  remainder =remainder
  
)
return(result)
}
k <- 10
n <- 2
print(operation(k,n))



#2
quadratic_roots <- function(a, b, c) {
  discriminant <- b^2 - 4 * a * c
  root1 <- (-b + sqrt(discriminant)) / (2 * a)
  root2 <- (-b - sqrt(discriminant)) / (2 * a)
  
  return(c(root1, root2))
}

# Test the function
a <- 1
b <- -3
c <- 2
print(quadratic_roots(a, b, c))
