#Lab 2 
#Exercise 1
round(123456789,digits=3)
# 12.134000000000000341

round(12.1343,digits=3)
# 12.134000000000000341

round(123.12344,digits=3)
# 123.12300000000000466

round(1234.12344,digits=3)
# 1234.1230000000000473

round(12345.12344,digits=3)
# 12345.122999999999593

#change the environment options of number of digits displayed
options(digits = 15)
print(round(12345.12344, digits = 3))
# 12345.123

options(digits = 15)
print(round(1234.12344,digits=3))
#1234.123

options(digits = 15)
print(round(123.12344,digits=3))
#123.123

options(digits = 15)
print(round(12.1343,digits=3))
#12.134

#using formatC function
formatC(round(12345.12344, digits = 3), format = "f", digits = 3)
"12345.123"

#default fun of print
print(1234.12344)

print(1234.723,digits=3)
#1235
print(1234.723,digits=5)
#1234.7

round(123456788.123,digits=3)
#123456788.123

print(round(123456788.123,digits=2),digits=20)
#123456788.12000000477

print(round(123456789.1234,digits=4),digits=20)
#123456789.12340000272

paste("Hello World")
#"Hello World"

paste("Hello","World")
#"Hello World"

paste(1:10)
#"1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10"

paste(1:10)[4]
#"4"

as.numeric(paste(1:10))
#1  2  3  4  5  6  7  8  9 10

paste(1:10,collapse=".")
#"1.2.3.4.5.6.7.8.9.10"

paste(c("Hello","World"),1:10,sep="-") 
# [1] "Hello-1"  "World-2"  "Hello-3"  "World-4"  "Hello-5"  "World-6" 
#[7] "Hello-7"  "World-8"  "Hello-9"  "World-10"

print(paste("Hello",1:10,sep="-"))
# [1] "Hello-1"  "Hello-2"  "Hello-3"  "Hello-4"  "Hello-5"  "Hello-6" 
#[7] "Hello-7"  "Hello-8"  "Hello-9"  "Hello-10"



#Exercise 2
0:10
#  0  1  2  3  4  5  6  7  8  9 10

15:5
# 15 14 13 12 11 10  9  8  7  6  5

seq(0,1.5,0.1)
#0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5

seq(6,4,-0.2)
#6.0 5.8 5.6 5.4 5.2 5.0 4.8 4.6 4.4 4.2 4.0

N <- c(55,76,92,103,84,88,121,91,65,77,99)

seq(from=0.04,by=0.01,length=11)
#0.04 0.05 0.06 0.07 0.08 0.09 0.10 0.11 0.12 0.13 0.14
seq(0.04,by=0.01,along=N)
#0.04 0.05 0.06 0.07 0.08 0.09 0.10 0.11 0.12 0.13 0.14

seq(from=0.04,to=0.14,along=N)
#0.04 0.05 0.06 0.07 0.08 0.09 0.10 0.11 0.12 0.13 0.14

sequence(c(4,3,4,4,4,5))
# 1 2 3 4 1 2 3 1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4 5

#Generating repeats
rep(9,5) 
#9 9 9 9 9
rep(1:4,2)
#1 2 3 4 1 2 3 4
rep(1:4,each=2)
#1 1 2 2 3 3 4 4
rep(1:4,each=2,times=3)
#1 1 2 2 3 3 4 4 1 1 2 2 3 3 4 4 1 1 2 2 3 3 4 4
rep(1:4,1:4)
#1 2 2 3 3 3 4 4 4 4

rep(1:4,c(4,1,4,2))
#1 1 1 1 2 3 3 3 3 4 4

rep(c("cat","dog","goldfish","rat"), c(2,3,2,1))
#[1] "cat"      "cat"      "dog"      "dog"      "dog"      "goldfish"
#[7] "goldfish" "rat"  

seq(-1,1,by=0.1) 
# [1] -1.0 -0.9 -0.8 -0.7 -0.6 -0.5 -0.4 -0.3 -0.2 -0.1  0.0  0.1  0.2  0.3
#[15]  0.4  0.5  0.6  0.7  0.8  0.9  1.0

seq(-1,1,0.1)
#[1] -1.0 -0.9 -0.8 -0.7 -0.6 -0.5 -0.4 -0.3 -0.2 -0.1  0.0  0.1  0.2  0.3
#[15]  0.4  0.5  0.6  0.7  0.8  0.9  1.0

seq(-1,1,length=7)
#[1] -1.000000000000000 -0.666666666666667 -0.333333333333333
#[4]  0.000000000000000  0.333333333333333  0.666666666666667
#[7]  1.000000000000000

# Example for interval of 0.1 from -1 to 1
start <- -1
end <- 1
step <- 0.1
output <- start + (0:(as.integer((end - start) / step))) * step
print(output)
#[1] -1.0 -0.9 -0.8 -0.7 -0.6 -0.5 -0.4 -0.3 -0.2 -0.1  0.0  0.1  0.2  0.3
#[15]  0.4  0.5  0.6  0.7  0.8  0.9  1.0




#Exercise 3
3/0
#Inf
exp(-Inf)
# 0
(0:3)**Inf
#  0   1 Inf Inf
0/0
#NaN
Inf - Inf
#NaN
Inf/Inf
#NaN
is.finite(10)
#TRUE
is.infinite(10)
#FALSE
is.infinite(Inf)
#TRUE


y<- c(4,NA,7) 
y=="NA" 
#FALSE    NA FALSE
is.na(y)
#FALSE  TRUE FALSE

y<- c(4,NA,7) 
y[!is.na(y)]
#4 7

c1<- c(1,2,3,NA)
c2<- c(5,6,NA,8)
c3<- c(9,NA,11,12)
c4<- c(NA,14,15,16)
full.frame[c4,] #or full.frame[c2,] full.frame[c3,]
#c1 c2 c3 c4
#NA   NA NA NA NA
#NA.1 NA NA NA NA
#NA.2 NA NA NA NA
#NA.3 NA NA NA NA

print(reduced.frame <- full.frame[! is.na(full.frame$c1),])
#  c1 c2 c3 c4
#1  1  5  9 NA
#2  2  6 NA 14
#3  3 NA 11 15
 
print(full.frame <-data.frame(c1,c2,c3,c4))
#  c1 c2 c3 c4
#1  1  5  9 NA
#2  2  6 NA 14
#3  3 NA 11 15
#4 NA  8 12 16

mean(full.frame$c1)
# Output: NA

mean(full.frame$c1, na.rm = TRUE)
# Output: 2

v <- c(1:6,NA,NA,9:12)
seq(along=v)[is.na(v)]
#7 8
which(is.na(v))
#7 8









































 

