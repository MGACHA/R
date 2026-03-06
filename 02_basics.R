# ============================================
# Lesson 2: Variables & Data Types
# ============================================

# Creating variables
name <- "Alice"  # Character (string)
age <- 25        # Numeric
height <- 5.7    # Numeric (double)
is_student <- TRUE  # Logical (boolean)

# Print variables
cat("Name:", name, "\n")
cat("Age:", age, "\n")
cat("Height:", height, "\n")
cat("Is student:", is_student, "\n\n")

# Check data types
cat("Type of name:", class(name), "\n")
cat("Type of age:", class(age), "\n")
cat("Type of is_student:", class(is_student), "\n\n")

# Numeric operations
x <- 10
y <- 3

cat("Math operations:\n")
cat("x + y =", x + y, "\n")
cat("x - y =", x - y, "\n")
cat("x * y =", x * y, "\n")
cat("x / y =", x / y, "\n")
cat("x ^ y =", x ^ y, "\n")
cat("x %% y =", x %% y, "\n\n")

# String operations
first_name <- "John"
last_name <- "Doe"
full_name <- paste(first_name, last_name)
cat("Full name:", full_name, "\n")

# String functions
text <- "Hello World"
cat("Original:", text, "\n")
cat("Uppercase:", toupper(text), "\n")
cat("Lowercase:", tolower(text), "\n")
cat("Number of characters:", nchar(text), "\n\n")

# Logical operations
a <- TRUE
b <- FALSE

cat("Logical operations:\n")
cat("a AND b:", a & b, "\n")
cat("a OR b:", a | b, "\n")
cat("NOT a:", !a, "\n\n")

# Comparison operators
cat("Comparisons:\n")
cat("5 > 3:", 5 > 3, "\n")
cat("5 < 3:", 5 < 3, "\n")
cat("5 == 5:", 5 == 5, "\n")
cat("5 != 3:", 5 != 3, "\n")
cat("5 >= 5:", 5 >= 5, "\n")

cat("\n✓ Lesson 2 complete!\n")
