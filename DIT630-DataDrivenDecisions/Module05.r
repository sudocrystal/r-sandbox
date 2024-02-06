url <- "https://www2.isye.gatech.edu/~jeffwu/wuhamadabook/data/BloodPressure.dat"
df <- read.csv(url, header=TRUE, sep=",")

print(head(df))