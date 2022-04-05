## code to prepare `stats_all` dataset goes here

library(tidyverse)
library(readxl)
stats_all <- read_excel("appmat-MCAT-GPA-all.xlsx")
stats_all <- stats_all %>% janitor::clean_names()
