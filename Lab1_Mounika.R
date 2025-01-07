#lab 1 jan 2025
#Q1.1
x<- 2.7/2 # '/' gives quotient
print(x)

#Q1.2
x<- 2.7%/%2 #integer quotient(integer division)
print(x)

x<- 2.7%%2  # '%%' gives remainder
print(x)
 
#Q1.3
x<- 10+5i/2 #dividing imaginary number 
print(x) 

#Q1.4
x<- round(2.5) #rounds to nearest integer
print(x) 

#Q1.5
x<- round(-2.5) 
print(x)

#Q1.6
x<- 2%/%4-1 #2%/%4=0 and 0-1 =-1
print(x)

#Q1.7
x<- 3*2**2
print(x)
x<- 3*2^2
print(x)


#Q1.8
x<- 3**2*2 #exponent '** / ^' , multpli '*'
print(x)

#Q1.9
x<- 7%/%4
print(x)

#Q1.10
x<- 7%%4
print(x)

#Q1.11
x<- -9%%4
print(x)

#Q1.12
x<- trunc(5.7) #no rounding just truncate decimal place numbers
print(x)

#Q1.13
x<- trunc(-5.7)
print(x)

#Q2
#function for ceiling operation func
y<- function(x) floor(x +0.5)
y(5.7)

#Q3
a<- 1
b<- 2
c<- 4
#1
a & b #gives 'True' as both a and b are non-zero
#2
!a<b | c>b  # !(a<b) is 'False' , (c>b) is 'True', in this case 'OR' gives True

#Q4
x<- c(5,3,7,8) #assigns a vector(numbers) to a variable 'x'
print(x)
typeof(x)
is.integer(x) #default data type for number vector is 'numeric' in R, not integer type
is.numeric(x)
x<- integer(x) #gives error due to invalid 'length' argument


x<- c(5,3,7,8)
print(x)
typeof(x)
is.integer(x)
is.numeric(x)
x<- as.integer(x) #converts numeric vector into integer vector
print(x)
is.integer(x) #gives True as it already converted to integer type



#Q5
x<- sqrt(2) 
x*x ==2 #gives 'False' because real numbers is stored in binary approximations, not all decimal values can be represented exactly in binary
#so x*x is slightly less than 2 (rounding errors) 
diff<- x*x -2  #gives how much rounding error occurred
print(diff)
all.equal(x*x,2) # 'all.equal()' used specially used for comparing real number for nearly equal numbers























