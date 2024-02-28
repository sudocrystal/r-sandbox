library(fpp)
library(ggplot2)

df <- data.frame(wmurders)
print(head(df))
print(nrow(df))

# (a) By studying appropriate graphs of the series in R, find an appropriate ARIMA model for these data.
best <- auto.arima(df)
print(best)

# Series: df 
# ARIMA(1,2,1)

# Coefficients:
#           ar1      ma1
#       -0.2434  -0.8261
# s.e.   0.1553   0.1143

# sigma^2 = 0.04632:  log likelihood = 6.44
# AIC=-6.88   AICc=-6.39   BIC=-0.97

# (b) Create a plot of the series with forecasts and prediction intervals for the next three periods shown.

theForecast <- forecast(object=best, h=3)
print(theForecast)
plot(theForecast)