# ============================================
# R PROGRAMMING QUICK REFERENCE
# ============================================

# BASIC SYNTAX
# ------------
x <- 5                    # Assignment
y = 5                     # Also works (but <- is preferred)
print(x)                  # Output
cat("Hello\n")           # Print without quotes

# DATA TYPES
# ----------
42                       # Numeric
"Hello"                  # Character
TRUE / FALSE             # Logical
1 + 2i                   # Complex

# VECTORS
# -------
c(1, 2, 3)              # Create vector
1:10                     # Sequence from 1 to 10
seq(0, 10, by=2)        # Sequence with step
rep(1, 5)               # Repeat: 1 1 1 1 1
length(vec)             # Vector length
vec[1]                  # First element (1-indexed!)
vec[c(1,3)]             # Elements 1 and 3
vec[-1]                 # All except first

# LISTS
# -----
list(a=1, b=2)          # Named list
mylist$a                # Access by name
mylist[[1]]             # Access by index

# MATRICES
# --------
matrix(1:9, nrow=3)     # Create matrix
mat[2,3]                # Element at row 2, col 3
mat[2,]                 # Row 2
mat[,3]                 # Column 3

# DATA FRAMES (Most Important!)
# --------------
data.frame(x=c(1,2), y=c(3,4))  # Create
df$column               # Access column
df[1,]                  # First row
df[,2]                  # Second column
nrow(df)                # Number of rows
ncol(df)                # Number of columns
head(df)                # First 6 rows
tail(df)                # Last 6 rows
str(df)                 # Structure
summary(df)             # Summary statistics

# SUBSETTING
# ----------
df[df$x > 5,]           # Filter rows
subset(df, x > 5)       # Alternative filter
df[, c("x", "y")]       # Select columns

# FUNCTIONS
# ---------
mean(x)                 # Average
median(x)               # Median
sd(x)                   # Standard deviation
var(x)                  # Variance
sum(x)                  # Sum
min(x)                  # Minimum
max(x)                  # Maximum
range(x)                # Min and max
quantile(x)             # Quantiles
table(x)                # Frequency table
unique(x)               # Unique values
length(x)               # Length
sort(x)                 # Sort ascending
order(x)                # Indices for sorting

# CONTROL FLOW
# ------------
if (condition) {
  # code
} else {
  # code
}

for (i in 1:10) {
  # code
}

while (condition) {
  # code
}

# CUSTOM FUNCTIONS
# ---------------
myfunction <- function(x, y=0) {
  result <- x + y
  return(result)
}

# APPLY FAMILY
# ------------
lapply(list, function)  # Apply to list, return list
sapply(list, function)  # Apply to list, return vector
apply(matrix, 1, fun)   # Apply to matrix rows
apply(matrix, 2, fun)   # Apply to matrix columns
tapply(vec, groups, fun) # Apply by groups

# STRING FUNCTIONS
# ---------------
paste("Hello", "World")     # Concatenate
paste0("No", "Space")       # Concatenate without space
toupper("hello")            # To uppercase
tolower("HELLO")            # To lowercase
nchar("hello")              # String length
substr("hello", 1, 3)       # Substring: "hel"
strsplit("a,b,c", ",")      # Split string
gsub("old", "new", str)     # Replace all

# FILE I/O
# --------
read.csv("file.csv")        # Read CSV
write.csv(df, "out.csv")    # Write CSV
read.table("file.txt")      # Read table
readLines("file.txt")       # Read all lines

# PLOTTING (Base R)
# ----------------
plot(x, y)              # Scatter plot
plot(x, y, type="l")    # Line plot
hist(x)                 # Histogram
boxplot(x)              # Box plot
barplot(x)              # Bar plot
pie(x)                  # Pie chart

# Plot customization
main="Title"            # Main title
xlab="X axis"          # X label
ylab="Y axis"          # Y label
col="blue"             # Color
pch=19                 # Point style
lwd=2                  # Line width
xlim=c(0,10)           # X limits
ylim=c(0,10)           # Y limits

# STATISTICS
# ----------
cor(x, y)              # Correlation
lm(y ~ x)              # Linear regression
t.test(x)              # T-test
chisq.test(x)          # Chi-square test
rnorm(n, mean, sd)     # Random normal
runif(n, min, max)     # Random uniform
sample(x, n)           # Random sample
set.seed(123)          # Set random seed

# PACKAGES
# --------
install.packages("pkg")    # Install package
library(pkg)               # Load package
require(pkg)               # Load package (returns FALSE if fails)
search()                   # Loaded packages

# USEFUL PACKAGES TO LEARN
# ------------------------
# dplyr     - Data manipulation
# ggplot2   - Advanced plotting
# tidyr     - Data tidying
# readr     - Fast file reading
# stringr   - String manipulation
# lubridate - Date/time handling

# HELP
# ----
?function              # Help for function
??keyword              # Search help
help.search("topic")   # Search help
example(function)      # Examples for function
vignette()            # List vignettes
vignette("package")   # Package vignette

# WORKSPACE
# ---------
ls()                  # List objects
rm(x)                 # Remove object
rm(list=ls())         # Clear workspace
getwd()               # Get working directory
setwd("path")         # Set working directory
list.files()          # List files

# USEFUL KEYBOARD SHORTCUTS (RStudio)
# -----------------------------------
# Ctrl + Enter      - Run current line/selection
# Ctrl + Shift + S  - Source file
# Ctrl + L          - Clear console
# Tab               - Auto-complete
# Ctrl + Shift + M  - Insert pipe operator %>%
# Alt + -           - Insert assignment operator <-
