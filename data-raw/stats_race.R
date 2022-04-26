## code to prepare `stats_race` dataset goes here

library(tidyverse)
library(readxl)
stats_race <- read_excel("appmat-MCAT-GPA-race.xlsx")
stats_race <- stats_race %>% janitor::clean_names()
