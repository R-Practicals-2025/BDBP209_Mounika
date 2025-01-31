# 1. Read in the file ”BrainCancer.csv” and store the data as data frame
data = read.csv("~/Downloads/Heart.csv", header = TRUE)
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
data$ChestPain <- factor(data$ChestPain, levels = c("typical", "asymptomatic","nonanginal","nontypical"))
is.factor(data$ChestPain)
data$Thal <- factor(data$Thal, levels = c("fixed","normal","reversable"))
is.factor(data$Thal)
data$AHD <- factor(data$AHD, levels = c("No", "Yes"))
is.factor(data$AHD)

# 2.7 Print the levels of each categorical variable
print(levels(data$AHD))
print(levels(data$Thal))
print(levels(data$ChestPain))

# 2.8 Print the number of levels of each categorical variable
print(nlevels(data$AHD))
print(nlevels(data$Thal))
print(nlevels(data$ChestPain))

# 3.1 Print the mean of the column describing the gross cholesterol
print(mean(data$Chol))

# 3.2 Print the mean of the column describing the RestBP
print(mean(data$RestBP))

# 3.3 Print the median of Chol column
print(median(data$Chol))

# 3.4 Print the mode of chol column
library(modeest)
mode_val <- mfv(data$Chol)
print(mode_val)

# 3.5 Print the standard deviation of Chol column
print(sd(data$Chol))

# 3.6 Print the statistical summary of the Chol column data
print(summary(data$Chol))

# 3.7 Plot the histogram of Chol data
hist(data$Chol)

# 3.8 Print the skewness value of Chol data
library(moments)
print(skewness(data$Chol))

# 3.9 Print the kurtosis value of the Chol data
print(kurtosis(data$Chol))

# 3.10 Make and compare boxplots of Chol data with different options
boxplot(data$Chol, main = "Boxplot of Chol (Default)", col = "cyan")
boxplot(data$Chol, range = 0.1, col = "red", border = "blue", main = "Boxplot with range = 0.1")
boxplot(data$Chol, range = 0.2, col = "red", border = "blue", main = "Boxplot with range = 0.2")
boxplot(data$Chol, range = 0.05, col = "red", border = "blue", main = "Boxplot with range = 0.05")

# Boxplot of 3 data sets – GTV, KI, and time
boxplot(data$Chol, data$RestBP, data$MaxHR, names = c("Chol",  "RestBP", "MaxHR"), main = "Boxplot of Chol, RestBP, and MaxHR")

# 4.1 Build subsets of the data
# Chol data with values > 300
filter1 = subset(data, data$Chol > 300)
print(filter1)
print(dim(filter1))

# 4.2 Subset of specific rows
filter2 = data[c(1, 3, 8, 9, 13, 14, 18, 21), ]
print(filter2)

# 4.3 Subset of rows with only Female AHD entries
filter3_ind = which(data$AHD == 'Yes')
print(filter3_ind)
filter4 = data[filter3_ind, ]
print(filter4)

# 4.4 Extract columns Chol and RestBP and build a new column
data$new_column <- data$Chol * data$RestBP / 234
new_df <- data[, c("Chol", "RestBP", "new_column")]
print(new_df)

# 4.5 Write the subset data corresponding to ”ADH” entries to a csv file
write.csv(filter4, "~/Downloads/lab4_ADH_present.csv", row.names = FALSE)

