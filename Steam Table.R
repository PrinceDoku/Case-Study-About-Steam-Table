# Install tidyverse packages 
install.packages("tidyverse")
# Loading of tidyverse packages 
library(tidyverse)
# Install xlsx Package
install.packages("xlsx")
# Importing and loading of xlsx Package
library(xlsx)
# Reading of Clean Data and equating to data_1
data_1 <- read_excel(" Clean Data L (2).xlsx")
data_1
# Viewing dataset and it's summary
View(data_1)
head(data_1)
str(data_1)
summary(data_1)
# Generate Scatter Plots for the dataset
library(ggplot2)
ggplot(data=data_1) +geom_point(mapping =aes(x=`Pressure (MPa)`, y = `Temperature (°C)`))+
  labs(title="Temperature Vrs Pressure Graph for Steam Table", subtitle = "Displays Relationship between Temperature and Pressure")
# Generate Line Plots for The data set
ggplot(data=data_1) +geom_line(mapping =aes(x=`Pressure (MPa)`, y = `Temperature (°C)`))+
  labs(title="Temperature Vrs Pressure Graph for Steam Table", subtitle = "Displays Relationship between Temperature and Pressure")+
  xlim(0.0006117,22.06)+
  ylim(0.010,373.9)
