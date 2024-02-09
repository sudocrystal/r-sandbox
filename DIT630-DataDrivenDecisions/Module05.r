library(reshape2)
library(ggplot2)
library(dplyr)

# Get Data (separated by spaces)
# Skip top header, read second header as col names
url <- "https://www2.isye.gatech.edu/~jeffwu/wuhamadabook/data/BloodPressure.dat"
df <- read.csv(url, skip=1, header=TRUE, sep=" ")
print(head(df))

# Grab only devices information, add average
devices <- df %>% select(Day, starts_with('Dev')) %>% mutate(DevAvg=(Dev1+Dev2+Dev3)/3)
print(head(devices))

# Grab only doctors information, add average
doctors <- df %>% select(Day="Day.1", starts_with('Doc')) %>% mutate(DocAvg=(Doc1+Doc2+Doc3)/3)
print(head(doctors))

combined <- full_join(devices, doctors, by=c("Day"))
print(combined)

melted_combined <- combined %>% select(Day, DevAvg, DocAvg) %>% melt(id="Day")
print(melted_combined)

scatterplot <- ggplot(melted_combined, aes(x=Day, y=value, color=variable)) + geom_line()
print(scatterplot)