library(data.table)
library(magrittr)
library(stringr)
library(dplyr)
library(readr)

# Get the Data
data_url <- "https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_daily_reports_us/01-01-2021.csv"
# data <- fread(input=data_url, header=TRUE, sep=",") # opted away from this, to get data types of cols
data <- read_delim(file=data_url, delim=',')
# print(head(data))
# print(names(data))
# print(class(data))

# Filter (keep only) the observations of states names that start with 'M'
# str_detect found here: https://sebastiansauer.github.io/dplyr_filter/
m_data <- data %>% 
    filter(str_detect(Province_State, '^M'))
print(m_data["Province_State"])

# Calculate the mean number of 'Recovered' patients from this subset
# print(summary(m_data[, "Recovered"]))     # mean is found within, trying parsing next
m_means <- m_data %>% 
    summarise(avg = mean(Recovered))
# print(m_means$avg)
print(sprintf("Mean for recovered patients = %.3f", m_means$avg))

# From subset, create a new variable (Ratio) as the value of Active cases divided by Confirmed cases.
m_ratio <- m_data %>%
    select(Active, Confirmed) %>%
    mutate(Active/Confirmed)
print(m_ratio)

# Calculate the maximum value of Ratio in this subset
# print(sprintf("Max ratio = %f", max(m_ratio$'Active/Confirmed')))   # interesting, precison lost here
# print(max(m_ratio$'Active/Confirmed'))
cat("Max ratio = ", max(m_ratio$'Active/Confirmed'))