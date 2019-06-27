install.packages("fUnitRoots")
library(fUnitRoots)

# provides what working directory
getwd()

# sets working directory for windows
setwd("c:\\Users\\natasa\\rwork")

blowfly <- read.table("blowfly.txt",header=T)
###### TO SAVE THE DATA
write.table(x,"~/rstudio/blowfly.txt",sep=',')

########################################################
data=read.csv2(file.choose(),header = T)
View(data)
 ###  read the data in one column and skip the first 3
data= scan("http://personality-project.org/R/datasets/R.appendix1.data",skip=3)

#########################################################
datafilename="http://personality-project.org/R/datasets/R.appendix1.data"
dataset1=read.table(datafilename,header=T)   #read the data into a table
head(dataset1)
View(dataset1)
length(dataset1)
table(dataset1$Dosage)
length(dataset1$Dosage)
str(dataset1)
dim(dataset1)  # 69 11
class(dataset1)

#####################################################
# linear
lm.fit=lm(gallons ~ date)
summary(lm.fit)
plot(date,gallons,type='l',col='red')
abline(lm.fit)
RESIDUALS<-residuals(lm.fit)
lm.fitr<-lm(RESIDUALS~date)
plot(date,RESIDUALS)
abline(lm.fitr)
qqnorm(RESIDUALS)
qqline(RESIDUALS)
?qqnorm

##################################################

# Delete an element
x <- x[-4]
x

# Declare a vector
y <- vector(length = 2)

# Generating sequences
2:7
seq(from = 12, to = 30, by = 3)
rep(7, 4)

# Using all and any
x <- 1:10
any(x < 8)
all(x < 8)
x < 8

#############################################

# Filtering
z <- c(5, 2, -3, 8)
w <- z[z^2 > 8]
w
z^2 > 8

# Subset
x <- c(6, 1:3, NA, 12)
x[x > 5]
subset(x, x > 5)

# Filtering a matrix - using arr.ind 
M <- matrix(1:6, nrow = 3, ncol = 2)
which(M > 4)
which(M > 4, arr.ind=TRUE)


##################################
# Like many programming languages, R has an if-then-else function called
# ifelse. The format is:
# ifelse(test, yes, no)

##################################

x <- 1:10
y <- ifelse(x %% 2 == 0, 5, 12)
y
##########################################################################
resting <- matrix(c(36.1, 36.0, 36.3, 68, 65, 85), nrow = 3, ncol = 2)
active <-  matrix(c(36.3, 36.5, 37.3, 98, 112, 135), nrow = 3, ncol = 2)
A <- array(data = c(resting, active), dim = c(3, 2, 2))

#########################################################################
# Here's an example of a factor:
x <- c(5, 12, 13, 12) 
xf <- factor(x)
xf

# Adding in extra levels (if we know will be more levels than in the present data)
xf2 <- factor(x, levels = c(5, 12, 13, 88))
xf2
################################################################################
ages <- c(25, 26, 55, 37, 21, 42)
affils <- c('FG', 'Labour', 'Labour', 'FG', 'FF', 'Labour')
tapply(ages, affils, mean)

split(ages, affils)

# Note that split() returns a list. tapply() takes that list and uses lapply() on it
#################################################################################

# A repeat loop keeps repeating until a break command is found:
i <- 2

repeat{
  print(i)
  print(i^2)
  i <- i + 2
  if(i > 8) break
}
#########################################################

# A simple function with 3 arguments:
fun1 <- function(x, printx=TRUE, printy=TRUE) {
  
  y <- x^2
  if(printx) print(x)
  if(printy) print(y)
  
  return(y)
}
