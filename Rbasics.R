## ----setup, include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
knitr::opts_chunk$set(fig.width=6, fig.height=4) 


## ------------------------------------------------------------------------------------
31/4*(37-25) 
3^2
sqrt(36)
log(4)
cos(6)


## ------------------------------------------------------------------------------------
x = 5 
x <- 5
5 -> x


## ------------------------------------------------------------------------------------
x+3
x^2
sqrt(x)
y = x^2


## ------------------------------------------------------------------------------------
x = 10
x = x+1


## ------------------------------------------------------------------------------------
# Create a vector
c(1,3,2,4)
# Save the vector as 'x'
x = c(1,3,2,4)

# R applies functions to every element of a vector
x - 10
x^2


## ------------------------------------------------------------------------------------
mean(x) # mean
sd(x) # standard deviation
var(x) # variance
summary(x)
sum(x) # sum of all elements
prod(x) # product of all elements
length(x) # number of elements

x[1:3] # the first three elements


## ------------------------------------------------------------------------------------
data1 = read.table("~/Desktop/datasets/airfreight+breakage.txt")


## ------------------------------------------------------------------------------------
setwd("~/Desktop/datasets")#set working directory to "datasets" folder
data1 = read.table("airfreight+breakage.txt")#read the data set in the folder


## ------------------------------------------------------------------------------------
head(data1)#Display the first six rows
data1[1:3,]#Display the first six rows by row index
Y = data1[,1] # Extract variables from dataset
X = data1[,2]
data1[3,2]#Display the value is row 3 and column 2


## ------------------------------------------------------------------------------------
# histograms
hist(Y) 

# boxplots
boxplot(Y, main = 'Boxplot of Y')

# scatterplots
plot(X, Y, xlab = 'X', ylab = 'Y', main = 'Plot of Y versus X')

