data()
print(dim(airquality))

sapply(airquality, class)

n_na <- 0
for (i in seq_len(nrow(airquality))) {
  for (j in seq_len(ncol(airquality))) {
    n_na <- n_na + (if (is.na(airquality[i, j])) 1 else 0)
  }
}

print(n_na)

avg <- colMeans(airquality, na.rm = TRUE)
for (i in seq_len(nrow(airquality))) {
  for (j in seq_len(ncol(airquality))) {
    airquality[i, j] <- if (is.na(airquality[i, j])) avg[j] else airquality[i, j] # nolint
  }
}

na.omit(airquality)
