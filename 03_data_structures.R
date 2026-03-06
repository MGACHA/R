# ============================================
# Lesson 3: Data Structures
# ============================================

# -------------------
# 1. VECTORS
# -------------------
cat("=== VECTORS ===\n")

# Numeric vector
numbers <- c(1, 2, 3, 4, 5)
cat("Numbers:", numbers, "\n")

# Character vector
fruits <- c("apple", "banana", "cherry")
cat("Fruits:", fruits, "\n")

# Sequence generation
seq1 <- 1:10
seq2 <- seq(0, 20, by=2)
cat("Sequence 1:", seq1, "\n")
cat("Sequence 2:", seq2, "\n")

# Vector operations
v1 <- c(1, 2, 3, 4)
v2 <- c(5, 6, 7, 8)
cat("v1 + v2:", v1 + v2, "\n")
cat("v1 * 2:", v1 * 2, "\n\n")

# Vector indexing (R uses 1-based indexing!)
cat("First fruit:", fruits[1], "\n")
cat("Last fruit:", fruits[length(fruits)], "\n")
cat("First two fruits:", fruits[1:2], "\n\n")

# -------------------
# 2. LISTS
# -------------------
cat("=== LISTS ===\n")

# Lists can contain different types
person <- list(
  name = "Alice",
  age = 30,
  scores = c(85, 90, 88),
  is_employed = TRUE
)

cat("Person name:", person$name, "\n")
cat("Person age:", person$age, "\n")
cat("Person scores:", person$scores, "\n\n")

# -------------------
# 3. MATRICES
# -------------------
cat("=== MATRICES ===\n")

# Create matrix
matrix1 <- matrix(1:9, nrow=3, ncol=3)
cat("Matrix 1:\n")
print(matrix1)

# Create matrix by row
matrix2 <- matrix(1:9, nrow=3, ncol=3, byrow=TRUE)
cat("\nMatrix 2 (by row):\n")
print(matrix2)

# Access elements
cat("\nElement at [2,3]:", matrix1[2, 3], "\n")
cat("Second row:", matrix1[2, ], "\n")
cat("Third column:", matrix1[, 3], "\n\n")

# -------------------
# 4. DATA FRAMES
# -------------------
cat("=== DATA FRAMES ===\n")

# Most important structure for data analysis!
students <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Diana"),
  age = c(20, 22, 21, 23),
  grade = c(85, 78, 92, 88),
  passed = c(TRUE, TRUE, TRUE, TRUE)
)

cat("Students data frame:\n")
print(students)

cat("\nData frame dimensions:", dim(students), "\n")
cat("Number of rows:", nrow(students), "\n")
cat("Number of columns:", ncol(students), "\n")
cat("Column names:", colnames(students), "\n\n")

# Access columns
cat("Names column:\n")
print(students$name)

cat("\nGrades column:\n")
print(students$grade)

# Access specific elements
cat("\nFirst student's name:", students$name[1], "\n")
cat("Third student's grade:", students$grade[3], "\n")

# Summary statistics
cat("\nSummary of students:\n")
print(summary(students))

cat("\n✓ Lesson 3 complete!\n")
