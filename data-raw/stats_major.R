## code to prepare `stats_major` dataset goes here

library(tidyverse)
library(readxl)
stats_major <- read_excel("appmat-MCAT-GPA-major.xlsx")
stats_major <- stats_major %>% janitor::clean_names()
