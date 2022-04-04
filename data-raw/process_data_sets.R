library(tidyverse)
library(janitor)

# MCAT and GPA for all applicants

astats_all <- stats_all[c(4:21),] %>%
  row_to_names(row_number = 1)

colnames(astats_all)[2] <- "statistic"

astats_all <- astats_all %>%
  pivot_longer(c(`2018-2019`, `2019-2020`, `2020-2021`, `2021-2022`), names_to = "year", values_to = "numbers") %>%
  fill(Applicants) %>%
  pivot_wider(names_from = statistic, values_from = numbers) %>%
  mutate(category = Applicants, mean = as.numeric(Mean), SD = as.numeric(SD), number = as.numeric(`NA`), .keep = "unused") %>%
  select(category, year, mean, SD, number)

usethis::use_data(astats_all, overwrite = TRUE)

# MCAT and GPA for all matriculants

mstats_all <- stats_all[c(23:40),] %>%
  row_to_names(row_number = 1)

colnames(mstats_all)[2] <- "statistic"

mstats_all <- mstats_all %>%
  pivot_longer(c(`2018-2019`, `2019-2020`, `2020-2021`, `2021-2022`), names_to = "year", values_to = "numbers") %>%
  fill(Matriculants) %>%
  pivot_wider(names_from = statistic, values_from = numbers) %>%
  mutate(category = Matriculants, mean = as.numeric(Mean), SD = as.numeric(SD), number = as.numeric(`NA`), .keep = "unused") %>%
  select(category, year, mean, SD, number)

usethis::use_data(mstats_all, overwrite = TRUE)

# The following sources were referenced while writing this code:
# https://r4ds.had.co.nz/tidy-data.html
# https://stackoverflow.com/questions/32054368/use-first-row-data-as-column-names-in-r
