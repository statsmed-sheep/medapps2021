## code to prepare `sex` dataset goes here

library(tidyverse)
library(readxl)
astats_sex <- read_excel("app-MCAT-GPA-sex.xlsx")
astats_sex <- astats_sex %>% janitor::clean_names()
usethis::use_data(astats_sex, overwrite = TRUE)
