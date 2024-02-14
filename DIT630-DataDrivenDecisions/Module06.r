# The following data set includes measurements on: X, temperature (degrees Fahrenheit), 
# and y, percent butterfat for 10 cows across 20 consecutive days. These data are courtesy 
# of Dr. Jason Osborne at NCSU.

x <- c(64,65,65,64,61,55,39,41,46,59,56,56,62,37,37,45,57,58,60,55)
y <- c(4.65,4.58,4.67,4.60,4.83,4.55,5.14,4.71,4.69,4.65,4.36,4.82,4.65,4.66,4.95,4.60,4.68,4.65,4.6,.446)

# alternate test data:
# x <- c(1:6)
# y <- c(2, 3, 4, 2, 3, 4)

# Compute and report Pearson's sample correlation coefficient for these data. What two 
# aspects of the relationship between temperature and butterfat are described by this
# correlation? Write a few sentences to interpret this statistic.

data <- data.frame(Temperature=x, Butterfat=y)
correlation <- cor.test(data$Temperature, data$Butterfat, method = "pearson")
print(correlation)

# data:  data$Temperature and data$Butterfat
# t = -0.42257, df = 18, p-value = 0.6776
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
#  -0.5188745  0.3591623
# sample estimates:
#         cor
# -0.09911088

# For visual representation of the data:
# https://www.r-bloggers.com/2021/10/pearson-correlation-in-r/
library(ggplot2)
gg <- ggplot(data, aes(Temperature, Butterfat)) + 
      geom_point() + 
      geom_smooth(alpha=0.3, method="lm")
print(gg)


# The Pearson correlation test measures the strength of a linear relationship between
# two variables. After running cor.test, the correlation coefficient is -0.09911088
# However, we can see that the p-value is greater than 0.05. This means that there 
# is insufficient evidence to denote a significant linear relationship between 
# temperature and butterfat.