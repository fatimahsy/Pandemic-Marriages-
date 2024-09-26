#### Preamble ####
# Purpose: Tests Marriage Data
# Author: Fatimah Yunusa
# Date: 19 September 2024
# Contact: Fatimah.yunusa@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
install.packages("tidyverse")
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

#Test for negative numbers 
data$number_of_marriage |> min() <= 0

#Test for NA

all(is.na(data$number_of_marriage))

#Test for date range 
all(data$dates >= as.Date("2018-01-01") & data$dates <= as.Date("2023-12-31"))


