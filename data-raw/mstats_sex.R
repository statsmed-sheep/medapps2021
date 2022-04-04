## code to prepare `mstats_sex` dataset goes here

library(tidyverse)
library(readxl)
mstats_sex <- read_excel("mat-MCAT-GPA-sex.xlsx")
mstats_sex <- mstats_sex %>% janitor::clean_names()
usethis::use_data(mstats_sex, overwrite = TRUE)
