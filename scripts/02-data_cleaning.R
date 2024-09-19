#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset 
# Date: 
# Contact: fatimah.yunusa@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# Any other information needed? 

#### Workspace setup ####
install.packages("tidyverse")
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period, 
           into = c("year" , "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-") )
         )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data")
