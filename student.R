n <- as.integer(readline(prompt = "Enter the no. of students: "))

usn <- vector(mode = "character", length = n)
name <- vector(mode = "character", length = n)
marks <- vector(mode = "numeric", length = n)

for (i in 1:n) {
  usn[i] <- readline("Enter usn: ")
  name[i] <- readline("Enter name: ")
  marks[i] <- as.numeric(readline("Enter marks: "))
}

students <- data.frame(usn, name, marks)
print("Student details: ")
print(students)

age <- vector(mode = "integer", length = n)
for (i in 1:n) {
  age[i] <- as.integer(readline(paste("Enter age for usn", usn[i], ": ", sep = ""))) # nolint
}

students <- cbind(students, age)
print("Updated student details: ")
print(students)

print("Students with marks greater than 25 and age less than 20: ")
print(students[(students$age < 20) & (students$marks > 25), ])
