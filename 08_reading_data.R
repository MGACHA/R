# ============================================
# Lesson 8: Reading and Writing Data
# ============================================

cat("=== READING AND WRITING DATA ===\n\n")

# -------------------
# 1. READING CSV FILES
# -------------------
cat("=== READING CSV FILES ===\n")

# Check if file exists
if (file.exists("sample_data.csv")) {
  # Read CSV file
  employees <- read.csv("sample_data.csv")
  
  cat("Data loaded successfully!\n\n")
  
  # Display first few rows
  cat("First 6 rows:\n")
  print(head(employees))
  cat("\n")
  
  # Display structure
  cat("Data structure:\n")
  str(employees)
  cat("\n")
  
  # Summary
  cat("Data summary:\n")
  print(summary(employees))
  cat("\n")
  
  # Basic analysis
  cat("=== BASIC ANALYSIS ===\n")
  cat("Average salary:", mean(employees$salary), "\n")
  cat("Average age:", mean(employees$age), "\n")
  cat("Average years of experience:", mean(employees$years_experience), "\n\n")
  
  # Group by department
  cat("Average salary by department:\n")
  dept_salary <- aggregate(salary ~ department, data = employees, FUN = mean)
  print(dept_salary)
  cat("\n")
  
  # Find highest paid employee
  highest_paid <- employees[which.max(employees$salary), ]
  cat("Highest paid employee:\n")
  print(highest_paid)
  cat("\n")
  
  # Filter engineering department
  engineers <- subset(employees, department == "Engineering")
  cat("Engineers (", nrow(engineers), " total):\n", sep="")
  print(engineers)
  cat("\n")
  
  # -------------------
  # 2. WRITING FILES
  # -------------------
  cat("=== WRITING FILES ===\n")
  
  # Create summary data
  summary_data <- data.frame(
    department = c("Engineering", "Sales", "Marketing", "HR"),
    avg_salary = tapply(employees$salary, employees$department, mean),
    count = as.numeric(table(employees$department))
  )
  rownames(summary_data) <- NULL
  
  # Write to CSV
  write.csv(summary_data, "department_summary.csv", row.names = FALSE)
  cat("Created: department_summary.csv\n")
  
  # Write engineers to separate file
  write.csv(engineers, "engineers_only.csv", row.names = FALSE)
  cat("Created: engineers_only.csv\n\n")
  
  # -------------------
  # 3. VISUALIZATION
  # -------------------
  cat("=== CREATING VISUALIZATIONS ===\n")
  
  # Salary distribution
  hist(employees$salary,
       main = "Salary Distribution",
       xlab = "Salary ($)",
       ylab = "Frequency",
       col = "lightblue",
       breaks = 10)
  
  readline(prompt = "Press [enter] for next plot")
  
  # Salary by department
  boxplot(salary ~ department, data = employees,
          main = "Salary by Department",
          xlab = "Department",
          ylab = "Salary ($)",
          col = rainbow(length(unique(employees$department))))
  
  readline(prompt = "Press [enter] for next plot")
  
  # Age vs Salary
  plot(employees$age, employees$salary,
       main = "Age vs Salary",
       xlab = "Age",
       ylab = "Salary ($)",
       pch = 19,
       col = "darkblue")
  
  # Add trend line
  model <- lm(salary ~ age, data = employees)
  abline(model, col = "red", lwd = 2)
  
  readline(prompt = "Press [enter] for next plot")
  
  # Experience vs Salary
  plot(employees$years_experience, employees$salary,
       main = "Experience vs Salary",
       xlab = "Years of Experience",
       ylab = "Salary ($)",
       pch = 19,
       col = "darkgreen")
  
  model2 <- lm(salary ~ years_experience, data = employees)
  abline(model2, col = "red", lwd = 2)
  
  cat("\n✓ Lesson 8 complete!\n")
  
} else {
  cat("Error: sample_data.csv not found!\n")
  cat("Make sure the file is in the same directory as this script.\n")
}

cat("\nYou've learned how to:\n")
cat("- Read CSV files\n")
cat("- Analyze data\n")
cat("- Create summary statistics\n")
cat("- Export results\n")
cat("- Create visualizations\n")
