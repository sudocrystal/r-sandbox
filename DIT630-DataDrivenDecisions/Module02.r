# A <- matrix(1:10, nrow=5)
# print(A)

# B <- matrix(21:30, nrow=5)
# print(B)

# print(A*B)

# CT02
# Get data
url <- "http://www.jaredlander.com/data/TomatoFirst.csv"
tomato3 <- read.table(file=url, header=TRUE, sep=",")
print(head(tomato3))

# 1.
cat("num variables = ", ncol(tomato3), "\n")

# 2.
cat("most expensive tomato = ")
# print(tomato3$Price)
print(max(tomato3$Price, na.rm=TRUE))
print(summary(tomato3[, "Price"]))

# 3.
# print(tomato3$Source)      # outputs the column named "Source"
print(class(tomato3$Source))
# print(tomato3[,"Source"])  # All of the column named "Source"
print(class(tomato3[, "Source"]))
