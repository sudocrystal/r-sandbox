#1
# x <- seq(from = -1, to = 20, by = 3)
# print(x)
# print(is.numeric(x))

#2
# print(TRUE*FALSE)
# print(sin(0))
# print(pi)
# print(2 != pi)
# y <- sin(TRUE*FALSE) + (2 != pi)
# print(y)

#3 - INVALID
# 3Stooges <- c("Curly", "Larry", "Moe")
# length(3Stooges)

#4
# bT <- c(5, 3, NA, NA, 19)
# # na.rm = TRUE means "a logical evaluating to TRUE or FALSE
# # indicating whether NA values should be stripped before the computation proceeds."
# print(5 + 3 + 19)
# print(mean(bT, na.rm = TRUE))
# print(mean(bT, na.rm = TRUE) == 10)

#5
# library(magrittr)
# Rainbow <- c("Red", "Blue", "Green", "Yellow", "Orange", "Indigo", "Violet")
# print(Rainbow)
# Rainbow %>% factor(ordered = TRUE) %>% class
# print(Rainbow %>% factor(ordered = TRUE) %>% class)