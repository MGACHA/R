# ============================================
# Lesson 5: Data Manipulation
# ============================================

# Create sample data
students <- data.frame(
  id = 1:10,
  name = c("Alice", "Bob", "Charlie", "Diana", "Eve", 
           "Frank", "Grace", "Henry", "Ivy", "Jack"),
  age = c(20, 22, 21, 23, 20, 22, 21, 24, 20, 22),
  grade = c(85, 78, 92, 88, 75, 90, 82, 95, 88, 70),
  class = c("A", "B", "A", "A", "B", "A", "B", "A", "B", "B")
)

cat("=== ORIGINAL DATA ===\n")
print(students)
cat("\n")

# -------------------
# 1. SUBSETTING
# -------------------
cat("=== SUBSETTING ===\n")

# Filter rows where grade > 80
high_performers <- students[students$grade > 80, ]
cat("Students with grade > 80:\n")
print(high_performers)
cat("\n")

# Filter by multiple conditions
class_a_high <- students[students$class == "A" & students$grade > 85, ]
cat("Class A students with grade > 85:\n")
print(class_a_high)
cat("\n")

# Select specific columns
names_and_grades <- students[, c("name", "grade")]
cat("Names and grades only:\n")
print(names_and_grades)
cat("\n")

# Using subset() function
young_students <- subset(students, age <= 21, select = c(name, age, grade))
cat("Students aged 21 or younger:\n")
print(young_students)
cat("\n")

# -------------------
# 2. SORTING
# -------------------
cat("=== SORTING ===\n")

# Sort by grade (ascending)
sorted_by_grade <- students[order(students$grade), ]
cat("Sorted by grade (ascending):\n")
print(sorted_by_grade)
cat("\n")

# Sort by grade (descending)
sorted_desc <- students[order(-students$grade), ]
cat("Top 5 students by grade:\n")
print(head(sorted_desc, 5))
cat("\n")

# -------------------
# 3. ADDING COLUMNS
# -------------------
cat("=== ADDING COLUMNS ===\n")

# Add pass/fail column
students$status <- ifelse(students$grade >= 70, "Pass", "Fail")

# Add letter grade
students$letter_grade <- cut(students$grade, 
                             breaks = c(0, 70, 80, 90, 100),
                             labels = c("C", "B", "A", "A+"),
                             right = FALSE)

cat("Data with new columns:\n")
print(students)
cat("\n")

# -------------------
# 4. AGGREGATION
# -------------------
cat("=== AGGREGATION ===\n")

# Summary statistics
cat("Average grade:", mean(students$grade), "\n")
cat("Median age:", median(students$age), "\n")
cat("Max grade:", max(students$grade), "\n")
cat("Min grade:", min(students$grade), "\n\n")

# Group by class
class_summary <- aggregate(grade ~ class, data = students, FUN = mean)
cat("Average grade by class:\n")
print(class_summary)
cat("\n")

# Multiple aggregations
summary_by_class <- aggregate(grade ~ class, data = students, 
                              FUN = function(x) c(mean = mean(x), 
                                                  min = min(x), 
                                                  max = max(x)))
cat("Detailed summary by class:\n")
print(summary_by_class)
cat("\n")

# Count by class
class_counts <- table(students$class)
cat("Student count by class:\n")
print(class_counts)
cat("\n")

# -------------------
# 5. MISSING DATA
# -------------------
cat("=== MISSING DATA ===\n")

# Create data with missing values
data_with_na <- data.frame(
  x = c(1, 2, NA, 4, 5),
  y = c(10, NA, 30, 40, 50)
)

cat("Data with missing values:\n")
print(data_with_na)
cat("\n")

# Check for NA
cat("Is NA in x?:\n")
print(is.na(data_with_na$x))
cat("\n")

# Count NAs
cat("Number of NAs in x:", sum(is.na(data_with_na$x)), "\n")
cat("Number of NAs in y:", sum(is.na(data_with_na$y)), "\n\n")

# Remove rows with NA
clean_data <- na.omit(data_with_na)
cat("Data after removing NAs:\n")
print(clean_data)
cat("\n")

# Replace NA with mean
data_filled <- data_with_na
data_filled$x[is.na(data_filled$x)] <- mean(data_filled$x, na.rm = TRUE)
cat("Data with NAs replaced by mean:\n")
print(data_filled)

cat("\n✓ Lesson 5 complete!\n")
