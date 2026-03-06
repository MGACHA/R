# ============================================
# R PROGRAMMING EXERCISES
# ============================================

# Instructions: Solve each exercise by writing code below the problem.
# Uncomment the cat() lines to check your solutions.

cat("=== R PROGRAMMING PRACTICE EXERCISES ===\n\n")

# -------------------
# EXERCISE 1: Variables and Basic Operations
# -------------------
cat("EXERCISE 1: Variables and Basic Operations\n")
cat("Create variables for your name, age, and favorite number.\n")
cat("Then calculate: (age + favorite_number) * 2\n\n")

# Your code here:
# my_name <- 
# my_age <- 
# favorite_number <- 
# result <- 

# cat("Name:", my_name, "\n")
# cat("Result:", result, "\n\n")

# -------------------
# EXERCISE 2: Vectors
# -------------------
cat("EXERCISE 2: Vectors\n")
cat("Create a vector of numbers from 1 to 20.\n")
cat("Then find: a) sum, b) mean, c) numbers greater than 10\n\n")

# Your code here:
# numbers <- 
# sum_result <- 
# mean_result <- 
# greater_than_10 <- 

# cat("Sum:", sum_result, "\n")
# cat("Mean:", mean_result, "\n")
# cat("Numbers > 10:", greater_than_10, "\n\n")

# -------------------
# EXERCISE 3: Data Frame
# -------------------
cat("EXERCISE 3: Data Frame\n")
cat("Create a data frame with columns: product, price, quantity\n")
cat("Add at least 5 products. Calculate total value for each.\n\n")

# Your code here:
# products <- data.frame(
#   product = c(...),
#   price = c(...),
#   quantity = c(...)
# )
# products$total_value <- 

# print(products)

# -------------------
# EXERCISE 4: Conditional Statements
# -------------------
cat("EXERCISE 4: Conditional Statements\n")
cat("Write a function that takes a temperature in Celsius\n")
cat("and returns 'Cold' (<10), 'Moderate' (10-25), or 'Hot' (>25)\n\n")

# Your code here:
# temperature_category <- function(temp) {
#   # Your code
# }

# Test your function:
# cat(temperature_category(5), "\n")   # Should print "Cold"
# cat(temperature_category(20), "\n")  # Should print "Moderate"
# cat(temperature_category(30), "\n")  # Should print "Hot"

# -------------------
# EXERCISE 5: Loops
# -------------------
cat("EXERCISE 5: Loops\n")
cat("Use a loop to create a vector of the first 10 Fibonacci numbers\n")
cat("(0, 1, 1, 2, 3, 5, 8, 13, 21, 34...)\n\n")

# Your code here:
# fibonacci <- numeric(10)
# fibonacci[1] <- 0
# fibonacci[2] <- 1
# for (i in 3:10) {
#   # Your code
# }

# cat("Fibonacci sequence:", fibonacci, "\n\n")

# -------------------
# EXERCISE 6: Functions
# -------------------
cat("EXERCISE 6: Functions\n")
cat("Write a function that takes a vector of numbers\n")
cat("and returns a list with min, max, and range\n\n")

# Your code here:
# vector_stats <- function(vec) {
#   # Your code
# }

# Test your function:
# test_data <- c(10, 25, 13, 47, 8, 32, 19)
# result <- vector_stats(test_data)
# print(result)

# -------------------
# EXERCISE 7: Data Manipulation
# -------------------
cat("EXERCISE 7: Data Manipulation\n")
cat("Create a data frame of 10 students with name, math_score, english_score\n")
cat("Add a column for average score\n")
cat("Filter students with average > 80\n\n")

# Your code here:
# students <- data.frame(
#   name = c(...),
#   math_score = c(...),
#   english_score = c(...)
# )
# students$average <- 
# high_performers <- 

# print(high_performers)

# -------------------
# EXERCISE 8: String Manipulation
# -------------------
cat("EXERCISE 8: String Manipulation\n")
cat("Create a vector of names. Write code to:\n")
cat("a) Convert all to uppercase\n")
cat("b) Find names that start with 'A'\n")
cat("c) Count total characters in all names\n\n")

# Your code here:
# names <- c("Alice", "Bob", "Amanda", "Charlie", "Anna", "David")
# uppercase_names <- 
# names_with_a <- 
# total_chars <- 

# cat("Uppercase:", uppercase_names, "\n")
# cat("Names starting with A:", names_with_a, "\n")
# cat("Total characters:", total_chars, "\n\n")

# -------------------
# EXERCISE 9: Statistics
# -------------------
cat("EXERCISE 9: Statistics\n")
cat("Generate 100 random numbers from normal distribution (mean=50, sd=10)\n")
cat("Calculate: mean, median, standard deviation, and 95th percentile\n\n")

# Your code here:
# set.seed(123)  # For reproducibility
# random_data <- 
# data_mean <- 
# data_median <- 
# data_sd <- 
# percentile_95 <- 

# cat("Mean:", data_mean, "\n")
# cat("Median:", data_median, "\n")
# cat("SD:", data_sd, "\n")
# cat("95th percentile:", percentile_95, "\n\n")

# -------------------
# EXERCISE 10: Challenge
# -------------------
cat("EXERCISE 10: Challenge Problem\n")
cat("Write a function that takes a number n and returns:\n")
cat("- 'Fizz' if divisible by 3\n")
cat("- 'Buzz' if divisible by 5\n")
cat("- 'FizzBuzz' if divisible by both\n")
cat("- The number itself otherwise\n")
cat("Then apply it to numbers 1 to 30\n\n")

# Your code here:
# fizzbuzz <- function(n) {
#   # Your code
# }

# Test with numbers 1 to 30:
# for (i in 1:30) {
#   cat(fizzbuzz(i), " ")
# }
# cat("\n\n")

# -------------------
cat("✓ Complete these exercises to practice your R skills!\n")
cat("Solutions are not provided - try to solve them yourself!\n")
cat("Use ?function_name to get help on any R function.\n")
