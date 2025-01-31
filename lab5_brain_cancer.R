# 1. Read in the file ”BrainCancer.csv” and store the data as data frame
data = read.csv("~/Downloads/BrainCancer.csv", header = TRUE)
print(data)

# 2.1 Print the basic features of the data: dimensions of the data
print(dim(data))

# 2.2 Print the column names of the data
print(colnames(data))

# 2.3 Print the row names
print(rownames(data))

# 2.4 Print the appearance of the first 30 lines of data
print(head(data, n = 30))

# 2.5 Print the data representation as a frequency table
print(table(data))

# 2.6 Identify how many categorical variables are present and what they are
data$sex <- factor(data$sex, levels = c("Male", "Female"))
is.factor(data$sex)
data$diagnosis <- factor(data$diagnosis, levels = c("Meningioma", "Hg glioma", "LG glioma"))
is.factor(data$diagnosis)
data$loc <- factor(data$loc, levels = c("Infratentorial", "Supratentorial"))
is.factor(data$loc)
data$stereo <- factor(data$stereo, levels = c("SRS", "SRT"))
is.factor(data$stereo)

# 2.7 Print the levels of each categorical variable
print(levels(data$loc))
print(levels(data$sex))
print(levels(data$diagnosis))

# 2.8 Print the number of levels of each categorical variable
print(nlevels(data$loc))
print(nlevels(data$sex))
print(nlevels(data$diagnosis))

# 3.1 Print the mean of the column describing the gross tumor volume (GTV)
print(mean(data$gtv))

# 3.2 Print the mean of the column describing the time
print(mean(data$time))

# 3.3 Print the median of GTV column
print(median(data$gtv))

# 3.4 Print the mode of GTV column
library(modeest)
mode_val <- mfv(data$gtv)
print(mode_val)

# 3.5 Print the standard deviation of GTV column
print(sd(data$gtv))

# 3.6 Print the statistical summary of the GTV column data
print(summary(data$gtv))

# 3.7 Plot the histogram of GTV data
hist(data$gtv)

# 3.8 Print the skewness value of GTV data
library(moments)
print(skewness(data$gtv))

# 3.9 Print the kurtosis value of the GTV data
print(kurtosis(data$gtv))

# 3.10 Make and compare boxplots of GTV data with different options
boxplot(data$gtv, main = "Boxplot of GTV (Default)", col = "cyan")
boxplot(data$gtv, range = 0.1, col = "red", border = "blue", main = "Boxplot with range = 0.1")
boxplot(data$gtv, range = 0.2, col = "red", border = "blue", main = "Boxplot with range = 0.2")
boxplot(data$gtv, range = 0.05, col = "red", border = "blue", main = "Boxplot with range = 0.05")

# Boxplot of 3 data sets – GTV, KI, and time
boxplot(data$gtv, data$ki, data$time, names = c("GTV", "KI", "Time"), main = "Boxplot of GTV, KI, and Time")

# 4.1 Build subsets of the data
# GTV data with values > 20
filter1 = subset(data, data$gtv > 20)
print(filter1)
print(dim(filter1))

# 4.2 Subset of specific rows
filter2 = data[c(1, 3, 8, 9, 13, 14, 18, 21), ]
print(filter2)

# 4.3 Subset of rows with only Female sex entries
filter3_ind = which(data$sex == 'Female')
print(filter3_ind)
filter4 = data[filter3_ind, ]
print(filter4)

# 4.4 Extract columns GTV and KI and build a new column
data$new_column <- data$gtv * data$ki / 234
new_df <- data[, c("gtv", "ki", "new_column")]
print(new_df)

# 4.5 Write the subset data corresponding to ”Female” entries to a csv file
write.csv(filter4, "~/Downloads/lab4_female_BrainCancer.csv", row.names = FALSE)

