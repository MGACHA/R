# ============================================
# Lesson 7: Statistical Operations
# ============================================

cat("=== STATISTICAL OPERATIONS IN R ===\n\n")

# Sample data
data <- c(23, 45, 67, 34, 56, 78, 45, 67, 89, 43, 56, 78, 90, 45, 67)

# -------------------
# 1. DESCRIPTIVE STATISTICS
# -------------------
cat("=== DESCRIPTIVE STATISTICS ===\n")
cat("Data:", data, "\n\n")

# Measures of central tendency
cat("Mean:", mean(data), "\n")
cat("Median:", median(data), "\n")

# Mode (R doesn't have built-in mode function)
get_mode <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}
cat("Mode:", get_mode(data), "\n\n")

# Measures of spread
cat("Variance:", var(data), "\n")
cat("Standard Deviation:", sd(data), "\n")
cat("Range:", range(data), "\n")
cat("IQR (Interquartile Range):", IQR(data), "\n\n")

# Quantiles
cat("Quartiles:\n")
print(quantile(data))
cat("\n")

# Summary statistics
cat("Summary:\n")
print(summary(data))
cat("\n")

# -------------------
# 2. DISTRIBUTIONS
# -------------------
cat("=== PROBABILITY DISTRIBUTIONS ===\n")

# Normal distribution
cat("Normal Distribution (mean=100, sd=15):\n")
cat("  Random samples:", rnorm(5, mean=100, sd=15), "\n")
cat("  P(X < 110):", pnorm(110, mean=100, sd=15), "\n")
cat("  95th percentile:", qnorm(0.95, mean=100, sd=15), "\n")
cat("  Density at X=100:", dnorm(100, mean=100, sd=15), "\n\n")

# Binomial distribution
cat("Binomial Distribution (n=10, p=0.5):\n")
cat("  Random samples:", rbinom(5, size=10, prob=0.5), "\n")
cat("  P(X = 5):", dbinom(5, size=10, prob=0.5), "\n\n")

# Uniform distribution
cat("Uniform Distribution (0 to 1):\n")
cat("  Random samples:", runif(5), "\n\n")

# -------------------
# 3. CORRELATION
# -------------------
cat("=== CORRELATION ===\n")

# Create related data
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(2, 4, 5, 4, 5, 7, 8, 9, 10, 11)
z <- c(10, 9, 8, 7, 6, 5, 4, 3, 2, 1)

cat("X:", x, "\n")
cat("Y:", y, "\n")
cat("Z:", z, "\n\n")

cat("Correlation between X and Y:", cor(x, y), "\n")
cat("Correlation between X and Z:", cor(x, z), "\n\n")

# Correlation matrix
data_matrix <- data.frame(X = x, Y = y, Z = z)
cat("Correlation matrix:\n")
print(cor(data_matrix))
cat("\n")

# -------------------
# 4. LINEAR REGRESSION
# -------------------
cat("=== LINEAR REGRESSION ===\n")

# Simple linear regression
model <- lm(y ~ x)  # y as function of x

cat("Linear Model: y ~ x\n\n")
print(summary(model))
cat("\n")

# Get coefficients
coeffs <- coef(model)
cat("Intercept:", coeffs[1], "\n")
cat("Slope:", coeffs[2], "\n")
cat("Equation: y =", coeffs[1], "+", coeffs[2], "* x\n\n")

# Make predictions
new_x <- data.frame(x = c(11, 12, 13))
predictions <- predict(model, new_x)
cat("Predictions for x = 11, 12, 13:\n")
print(predictions)
cat("\n")

# Plot with regression line
plot(x, y, 
     main = "Linear Regression",
     xlab = "X", ylab = "Y",
     pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)
legend("topleft", legend = "Regression line", col = "red", lwd = 2)

readline(prompt = "Press [enter] to continue")

# -------------------
# 5. HYPOTHESIS TESTING
# -------------------
cat("=== HYPOTHESIS TESTING ===\n")

# One-sample t-test
sample_data <- c(23, 25, 27, 22, 24, 26, 28, 23, 25, 24)
cat("Sample data:", sample_data, "\n")
cat("Testing if mean differs from 25:\n\n")

t_test_result <- t.test(sample_data, mu = 25)
print(t_test_result)
cat("\n")

# Two-sample t-test
group1 <- c(23, 25, 27, 22, 24, 26, 28, 23, 25, 24)
group2 <- c(30, 32, 31, 33, 29, 31, 30, 32, 31, 30)

cat("Comparing two groups:\n")
cat("Group 1:", group1, "\n")
cat("Group 2:", group2, "\n\n")

two_sample_test <- t.test(group1, group2)
print(two_sample_test)
cat("\n")

# Chi-square test
cat("Chi-square test of independence:\n")
observed <- matrix(c(10, 20, 15, 25), nrow = 2)
cat("Observed frequencies:\n")
print(observed)
cat("\n")

chi_test <- chisq.test(observed)
print(chi_test)
cat("\n")

# -------------------
# 6. SAMPLING
# -------------------
cat("=== SAMPLING ===\n")

population <- 1:100

# Random sample
cat("Random sample of 10:\n")
random_sample <- sample(population, 10)
print(random_sample)
cat("\n")

# Sample with replacement
cat("Sample with replacement:\n")
sample_replace <- sample(population, 10, replace = TRUE)
print(sample_replace)
cat("\n")

# Set seed for reproducibility
set.seed(42)
cat("Random sample with seed=42:\n")
print(sample(population, 5))

set.seed(42)
cat("Same seed gives same result:\n")
print(sample(population, 5))
cat("\n")

cat("✓ Lesson 7 complete!\n")
cat("\nYou've learned the basics of statistical operations in R!\n")
cat("Next steps: Explore packages like 'dplyr' for data manipulation\n")
cat("and 'ggplot2' for advanced visualization.\n")
