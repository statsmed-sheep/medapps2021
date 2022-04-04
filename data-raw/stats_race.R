## code to prepare `race` dataset goes here

library(tidyverse)
library(readxl)
stats_race <- read_excel("appmat-MCAT-GPA-race.xlsx")
stats_race <- stats_race %>% janitor::clean_names()
usethis::use_data(stats_race, overwrite = TRUE)
