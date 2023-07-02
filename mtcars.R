data()

print(mtcars)
print(paste("No. of dimensions in mtcars:", nrow(mtcars), ncol(mtcars)))
automatic <- 0
manual <- 0

for (i in seq_len(nrow(mtcars))) {
  if (mtcars[i, 9] == 0) automatic <- automatic + 1
  else manual <- manual + 1
}

print(paste("No. of automatic vehicles:", automatic))
print(paste("No. of manual vehicle:", manual))

horsepower <- mtcars[, "hp"]
weight <- mtcars[, "wt"]
scatter.smooth(horsepower, weight)

newmtc <- data.frame(mtcars)
newmtc[, "am"] <- as.integer(newmtc[, "am"])
newmtc[, "cyl"] <- as.integer(newmtc[, "cyl"])
newmtc[, "vs"] <- as.integer(newmtc[, "vs"])

print(typeof(newmtc[, "am"]))
print(typeof(newmtc[, "cyl"]))
print(typeof(newmtc[, "vs"]))

cyl_less_than_5 <- data.frame()
for (i in seq_len(nrow(mtcars))) {
  if (newmtc[i, "cyl"] < 5) {
    cyl_less_than_5 <- rbind(cyl_less_than_5, newmtc[i, ])
  }
}

print(cyl_less_than_5)
