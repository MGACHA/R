# ============================================
# Lesson 4: Control Flow & Functions
# ============================================

# -------------------
# 1. IF-ELSE STATEMENTS
# -------------------
cat("=== IF-ELSE STATEMENTS ===\n")

age <- 18

if (age >= 18) {
  cat("You are an adult\n")
} else {
  cat("You are a minor\n")
}

# If-else if-else
score <- 85

if (score >= 90) {
  cat("Grade: A\n")
} else if (score >= 80) {
  cat("Grade: B\n")
} else if (score >= 70) {
  cat("Grade: C\n")
} else {
  cat("Grade: F\n")
}

# ifelse() function (vectorized)
scores <- c(95, 72, 88, 60, 91)
results <- ifelse(scores >= 70, "Pass", "Fail")
cat("\nScores:", scores, "\n")
cat("Results:", results, "\n\n")

# -------------------
# 2. FOR LOOPS
# -------------------
cat("=== FOR LOOPS ===\n")

# Simple for loop
cat("Counting from 1 to 5:\n")
for (i in 1:5) {
  cat(i, " ")
}
cat("\n\n")

# Loop through vector
fruits <- c("apple", "banana", "cherry")
cat("Fruits:\n")
for (fruit in fruits) {
  cat("-", fruit, "\n")
}
cat("\n")

# Loop with index
cat("Numbered fruits:\n")
for (i in 1:length(fruits)) {
  cat(i, ":", fruits[i], "\n")
}
cat("\n")

# -------------------
# 3. WHILE LOOPS
# -------------------
cat("=== WHILE LOOPS ===\n")

count <- 1
cat("Countdown from 5:\n")
count <- 5
while (count > 0) {
  cat(count, " ")
  count <- count - 1
}
cat("\n\n")

# -------------------
# 4. FUNCTIONS
# -------------------
cat("=== FUNCTIONS ===\n")

# Simple function
greet <- function(name) {
  message <- paste("Hello,", name, "!")
  return(message)
}

cat(greet("Alice"), "\n")
cat(greet("Bob"), "\n\n")

# Function with default parameter
greet_person <- function(name, greeting = "Hello") {
  return(paste(greeting, name, "!"))
}

cat(greet_person("Charlie"), "\n")
cat(greet_person("Diana", "Hi"), "\n\n")

# Function with multiple returns
calculate_stats <- function(numbers) {
  result <- list(
    mean = mean(numbers),
    median = median(numbers),
    min = min(numbers),
    max = max(numbers)
  )
  return(result)
}

data <- c(10, 20, 30, 40, 50)
stats <- calculate_stats(data)
cat("Statistics for", data, ":\n")
cat("Mean:", stats$mean, "\n")
cat("Median:", stats$median, "\n")
cat("Min:", stats$min, "\n")
cat("Max:", stats$max, "\n\n")

# Function with multiple arguments
rectangle_area <- function(length, width) {
  area <- length * width
  return(area)
}

cat("Rectangle area (5 x 3):", rectangle_area(5, 3), "\n")

# Anonymous function (lambda)
square <- function(x) x^2
cat("Square of 7:", square(7), "\n")

# Apply function to vector
numbers <- 1:5
squared <- sapply(numbers, square)
cat("\nNumbers:", numbers, "\n")
cat("Squared:", squared, "\n")

cat("\n✓ Lesson 4 complete!\n")
