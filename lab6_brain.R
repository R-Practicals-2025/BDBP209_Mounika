#lab 6

data = read.csv("~/Downloads/BrainCancer.csv", header = TRUE)
print(data)
#(5) Manipulating the ‘factors’ in existing data
#5.1
data$sex=as.factor(data$sex)
data$diagnosis=as.factor(data$diagnosis)
data$loc=as.factor(data$loc)
data$stereo=as.factor(data$stereo)
print(is.factor(data$sex))
print(is.factor(data$diagnosis))
print(is.factor(data$loc))
print(is.factor(data$stereo))

#5.2
print(nlevels(data$sex))

#5.3
print(levels(data$diagnosis))

#6

num_rows <- nrow(data)  # Get the number of rows
data$Temperature <- gl(n = 3, k = ceiling(num_rows / 3), labels = c("Hot", "Cold", "Lukewarm"))[1:num_rows]
new_data <- data  # Store the modified dataframe separately
print(head(new_data, 10))  # Print the first 10 rows

#7
tapply(data$gtv, data$ki, mean)
tapply(data$gtv, data$ki, mean, trim=0.1)

subdata1 = subset(data$gtv,data$ki==80)
print(subdata1)
sorted_subdata1 = sort(subdata1)
print(sorted_subdata1)
mean_subdata1= mean(sorted_subdata1,trim=0.1)
print(mean_subdata1)

#8
print(pmin(data$gtv,data$time,data$ki))
print(pmax(data$gtv,data$time,data$ki))

#9
ranks <- rank(data$gtv)
sorted <- sort(data$gtv)
ordered <- order(data$gtv)
view <- data.frame(data$gtv,ranks,sorted,ordered)
print(view)

indeces_diagnosis=data$diagnosis[ordered]
print(indeces_diagnosis)

new_ordered_df <- data.frame(gtv_ordered = ordered, diagnosis_ordered = indeces_diagnosis)
print(new_ordered_df)


write.csv(new_ordered_df,file = "lab4_ordered_data.csv",row.names = FALSE)

#10
filter1= data[1:6,3:8]
print(filter1)      

filter1mat=as.matrix(filter1)
print(filter1mat)
print(class(filter1mat))
print(mode(filter1mat))
print(attributes(filter1mat))

new_col <-data$ki +data$gtv +data$time
print(new_col)
new_col_added = data.frame(data,new_col)
print(new_col_added)
print(colnames(new_col_added))

#other way of adding cols
new_col_1 = cbind(data,new_col)
print(new_col_1)

new_col_added2 = data.frame(data,new_col_1)
print(new_col_added2)
print(colnames(new_col_added2))


filter2 =data[c(26,35),]
new_row_added_df = rbind(data,filter2)
print(new_row_added_df)
print(rownames(new_row_added_df))


#11
x <- matrix(c(1,0,2,5,3,1,1,3,1,3,3,1,0,2,2,1,0,2,1,0), nrow=4, ncol=5)
print(x)

print(rownames(x))
print(colnames(x))

rownames(x) <- paste("Trial", 1:4, sep="-")
print(rownames(x))
print(x)

drugs <- c("aspirin", "paracetamol", "nurofen", "hedex", "placebo")
colnames(x) <- drugs
print(x)

dimnames(x) <- list(paste("Trial", 1:4, sep="-"), paste("drug", 1:5, sep=" "))
print(x)


#12
mean(x[,5])
var(x[4,])

rowSums(x)
apply(x,1,sum)

colSums(x)
apply(x,2,sum)

rowMeans(x)
apply(x,1,mean)

colMeans(x)
apply(x,2,mean)


group <- c("A", "B", "B", "A")

print(row(x))
print(col(x))

row_sums <- rowsum(x, group)
print(row_sums)

# Alternative 1: Using tapply()
tapply_result <- tapply(x, list(group[row(x)], col(x)), sum)
print(tapply_result)

# Alternative 2: Using aggregate()
aggregate_result <- aggregate(x, list(group), sum)
print(aggregate_result)

#viii
apply(x,2,sample)
t(apply(x,1,sample))

#iX
print(apply(x,2,sample))
# Add a row at the bottom showing column means
x <- rbind(x, apply(x, 2, mean))
print(x)
# Add a column at the right showing row variances
x <- cbind(x, apply(x, 1, var))
print(x)
# Define column and row headings
col_headings <- c(paste("drug.", 1:5, sep=""), "var")
row_headings <- c(paste("Trial-", 1:4, sep=""), "Mean")

# Assign row and column names to the matrix
dimnames(x) <- list(row_headings, col_headings)

# Print the final matrix
print(x)


#13
data <- read.csv("~/Downloads/BrainCancer.csv", header = TRUE)

eg_sweep <- data.frame(data$ki, data$gtv, data$time)
cols <- apply(eg_sweep, 2,mean)
print(cols)

cols.means <- matrix(rep(cols,rep(dim(eg_sweep)[1],dim(eg_sweep)[2])),nrow=dim(eg_sweep)[1])
print(cols.means)
eg_sweep_alt <- eg_sweep - cols.means
print("Method 1")
print(eg_sweep_alt)

eg_sweep_alt2 <- sweep(eg_sweep,2,cols)
#columns will be departures from relevant col means
print("Method 2")
print(eg_sweep_alt2)

#sapply() used for vectors
eg_sapply <- sapply(3:7,seq)
print(attributes(eg_sapply))


#14
data <- read.csv("~/Downloads/pgfull.txt", header = TRUE)
species <- data[, 1:54]
print(head(species))  # Check if data is correctly extracted
max_indices <- max.col(species)  # Get column indices of max values per row
print(max_indices)

species_names <- names(species)[max_indices]
print(species_names)

species_freq_table <- table(species_names)
print(species_freq_table)

min_indices <- max.col(-species)  # Use negative values to find min column indices
print(min_indices)

species_min_names <- names(species)[min_indices]
print(species_min_names)

species_min_freq_table <- table(species_min_names)
print(species_min_freq_table)

#other example
vec <- c(1, 2, 3)
names(vec) <- c("A", "B", "C")
print(names(vec))
print(vec)


#15
apples <- c(4,4.5,4.2, 5.1,3.9)
oranges <- c(TRUE,TRUE,FALSE)
chalk <- c("limestone","marl","oolite","CaCO3")
cheese <- c(3.2-4.5i,12.8+2.2i)
items <- list(apples, oranges, chalk, cheese)
print(items)
#subscripts on lists have double square brackets
print(items[[3]])
print(items[[3]][3])
items[3] #this works
items[3][3] #this doesnot works

print(names(items))
items <- list(first=apples,second=oranges,third=chalk,fourth=cheese)
print(items$third)
print(class(items))

print(lapply(items,length))
print(lapply(items,class))
print(lapply(items,mean)) #it gives warning due to the presence of categorical data in the items 

summary(items)
str(items)


