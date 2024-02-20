library(ggplot2)

# A substance used in biological and medical research is shipped by airfreight 
# to users in cartons of 1,000 ampules. The data, involving 10 shipments, were 
# collected on the number of times the carton was transferred from one aircraft 
# to another over the shipment route (X) and the number of ampule found to be 
# found to be broken upon arrival (Y). 

x <- c(1,0,2,0,3,1,0,1,2,0)
y <- c(16,9,17,12,22,13,8,15,19,11)
df <- data.frame(transfers=x, broken=y)
print(df)

# (a) Obtain the estimated function. Plot the estimated regression function and
#     the data. Does a linear regression function appear to give a good fit here? 

plot <- ggplot(df, aes(x=transfers, y=broken)) + 
        geom_point() + stat_smooth(method="lm")
print(plot)

lrm <- lm(broken ~ transfers, data=df)
print(lrm)

print(summary(lrm))

# Call:
# lm(formula = broken ~ transfers, data = df)

# Residuals:
#    Min     1Q Median     3Q    Max 
#   -2.2   -1.2    0.3    0.8    1.8

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  10.2000     0.6633  15.377 3.18e-07 ***
# transfers     4.0000     0.4690   8.528 2.75e-05 ***
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Residual standard error: 1.483 on 8 degrees of freedom
# Multiple R-squared:  0.9009,    Adjusted R-squared:  0.8885
# F-statistic: 72.73 on 1 and 8 DF,  p-value: 2.749e-05

# The linear regression function does appear to have a mostly good fit. Since the meadian is near 0, this shows us that the model has a mostly symetrical fitting. 

# (b) Obtain a point estimate of the expected number of broken ampules 
#     when X = 1 transfer is made. 

est1 <- predict(lrm, data.frame(transfers=1))
print(est1)

# 14.2

# Following the formula y=mx+b, and using the coefficients: y = 4(x) + 10.2 which is 14.2

# (c) Estimate the increase in the expected number of ampules broken when there
#     are 2 transfers as compared to 1 transfer.

est2 <- predict(lrm, data.frame(transfers=2))
print(est2-est1)

# 4