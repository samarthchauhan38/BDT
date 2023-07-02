n <- as.integer(readline("Enter number of employees: "))

id <- vector(mode = "character", length = n)
name <- vector(mode = "character", length = n)
doj <- vector(mode = "character", length = n)
department <- vector(mode = "character", length = n)
designation <- vector(mode = "character", length = n)

for (i in 1:n) {
  id[i] <- readline("Enter employee ID: ")
  name[i] <- readline("Enter employee name: ")
  doj[i] <- readline("Enter employee DoJ: ")
  department[i] <- readline("Enter employee department: ")
  designation[i] <- readline("Enter employee designation: ")
}

employees <- data.frame(id, name, doj, department, designation)
print("Employees details: ")
print(employees)

write.csv(employees, "./Employees.csv", row.names = FALSE, quote = FALSE)

read_employees <- read.csv("./Employees.csv")
print("Employee details from CSV files: ")
print(read_employees)

id <- readline("Enter new employee ID: ")
name <- readline("Enter new employee name: ")
doj <- readline("Enter new employee DoJ: ")
department <- readline("Enter new employee department: ")
designation <- readline("Enter new employee designation: ")

new_employee <- data.frame(id, name, doj, department, designation) # nolint

write.table(new_employee, "./Employees.csv", append = TRUE, col.names = FALSE, row.names = FALSE, quote = FALSE) # nolint
print(read_employees)
