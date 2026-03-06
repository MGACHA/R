# ============================================
# Lesson 6: Data Visualization
# ============================================

# Note: These plots will display in a separate window or viewer
# In RStudio, they appear in the Plots pane

cat("=== PLOTTING IN R ===\n")
cat("Note: Plots will appear in a separate window\n\n")

# Create sample data
x <- 1:10
y <- x^2
students_grades <- c(85, 78, 92, 88, 75, 90, 82, 95, 88, 70, 84, 89)

# -------------------
# 1. BASIC PLOT
# -------------------
cat("Creating basic scatter plot...\n")
plot(x, y, 
     main = "Basic Scatter Plot",
     xlab = "X Values",
     ylab = "Y Values",
     col = "blue",
     pch = 19)  # pch sets point style

# Add line
lines(x, y, col = "red", lwd = 2)

# Wait for user to see plot
readline(prompt = "Press [enter] to continue to next plot")

# -------------------
# 2. LINE PLOT
# -------------------
cat("Creating line plot...\n")
time <- 1:12
sales <- c(150, 180, 200, 220, 250, 280, 300, 290, 310, 330, 350, 380)

plot(time, sales,
     type = "l",  # "l" for line
     main = "Monthly Sales",
     xlab = "Month",
     ylab = "Sales ($)",
     col = "darkgreen",
     lwd = 2)

# Add points
points(time, sales, col = "red", pch = 19)

# Add grid
grid()

readline(prompt = "Press [enter] to continue to next plot")

# -------------------
# 3. BAR PLOT
# -------------------
cat("Creating bar plot...\n")
categories <- c("Product A", "Product B", "Product C", "Product D")
values <- c(45, 62, 38, 55)

barplot(values,
        names.arg = categories,
        main = "Product Sales",
        xlab = "Products",
        ylab = "Units Sold",
        col = c("red", "blue", "green", "orange"),
        border = "black")

readline(prompt = "Press [enter] to continue to next plot")

# -------------------
# 4. HISTOGRAM
# -------------------
cat("Creating histogram...\n")
hist(students_grades,
     main = "Distribution of Student Grades",
     xlab = "Grade",
     ylab = "Frequency",
     col = "lightblue",
     border = "black",
     breaks = 5)

# Add vertical line for mean
abline(v = mean(students_grades), col = "red", lwd = 2, lty = 2)
legend("topright", legend = "Mean", col = "red", lty = 2, lwd = 2)

readline(prompt = "Press [enter] to continue to next plot")

# -------------------
# 5. BOX PLOT
# -------------------
cat("Creating box plot...\n")
class_a <- c(85, 88, 92, 78, 95, 82)
class_b <- c(70, 75, 88, 84, 90, 72)
class_c <- c(68, 72, 78, 82, 76, 74)

boxplot(class_a, class_b, class_c,
        names = c("Class A", "Class B", "Class C"),
        main = "Grade Distribution by Class",
        ylab = "Grade",
        col = c("lightblue", "lightgreen", "lightpink"))

readline(prompt = "Press [enter] to continue to next plot")

# -------------------
# 6. PIE CHART
# -------------------
cat("Creating pie chart...\n")
departments <- c("Engineering", "Sales", "Marketing", "HR", "Finance")
employees <- c(45, 30, 25, 15, 20)

pie(employees,
    labels = departments,
    main = "Employee Distribution by Department",
    col = rainbow(length(departments)))

readline(prompt = "Press [enter] to continue to next plot")

# -------------------
# 7. MULTIPLE PLOTS
# -------------------
cat("Creating multiple plots in one window...\n")

# Set up 2x2 grid
par(mfrow = c(2, 2))

# Plot 1
plot(x, y, main = "Quadratic", col = "blue", pch = 19)

# Plot 2
barplot(values, names.arg = categories, main = "Bar Chart", col = "lightgreen")

# Plot 3
hist(students_grades, main = "Histogram", col = "lightcoral")

# Plot 4
boxplot(class_a, class_b, class_c, names = c("A", "B", "C"), 
        main = "Box Plot", col = "lightyellow")

# Reset to single plot
par(mfrow = c(1, 1))

readline(prompt = "Press [enter] to continue")

# -------------------
# 8. CUSTOMIZATION
# -------------------
cat("Creating customized plot...\n")

# More advanced customization
plot(time, sales,
     type = "b",  # both lines and points
     main = "Advanced Plot Example",
     sub = "With multiple customizations",
     xlab = "Time Period",
     ylab = "Value",
     col = "darkblue",
     pch = 19,
     lwd = 2,
     cex = 1.5,  # point size
     cex.main = 1.5,  # title size
     cex.lab = 1.2,  # label size
     col.main = "darkred",
     col.lab = "darkgreen",
     xlim = c(0, 13),
     ylim = c(100, 400))

# Add grid
grid(col = "gray", lty = "dotted")

# Add legend
legend("topleft", 
       legend = "Sales Data",
       col = "darkblue",
       pch = 19,
       lty = 1,
       lwd = 2)

cat("\n✓ Lesson 6 complete!\n")
cat("\nNote: For more advanced plotting, consider learning ggplot2 package\n")
cat("Install with: install.packages('ggplot2')\n")
