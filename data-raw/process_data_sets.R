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

# MCAT and GPA for all applicants by major

astats_major <- stats_major[c(4:13),] %>%
  row_to_names(row_number = 1)

sd_cols = append(rep(na.omit(names(astats_major)[-1]), each = 2), "major", 0)
colnames(astats_major) = paste(sd_cols, as.matrix(astats_major[1,]))
astats_major <- astats_major[-1,]
names(astats_major)[1] = substr(names(astats_major)[1], 1, 5)
names(astats_major)[18] = substr(names(astats_major)[18], 1, 19)

astats_major <- astats_major %>%
  mutate(across(.cols = 2:18, .fns = as.numeric))

usethis::use_data(astats_major, overwrite = TRUE)

# MCAT and GPA for all matriculants by major

mstats_major <- stats_major[c(15:24),] %>%
  row_to_names(row_number = 1)

sd_cols = append(rep(na.omit(names(mstats_major)[-1]), each = 2), "major", 0)
colnames(mstats_major) = paste(sd_cols, as.matrix(mstats_major[1,]))
mstats_major <- mstats_major[-1,]
names(mstats_major)[1] = substr(names(mstats_major)[1], 1, 5)
names(mstats_major)[18] = substr(names(mstats_major)[18], 1, 19)

mstats_major <- mstats_major %>%
  mutate(across(.cols = 2:18, .fns = as.numeric))

usethis::use_data(mstats_major, overwrite = TRUE)

# MCAT and GPA for all applicants by race/ethnicity

# MCAT and GPA for all matriculants by race/ethnicity

# MCAT and GPA for all applicants by sex

# MCAT and GPA for all matriculants by sex

# MCAT and GPA for all applicants by state

# MCAT and GPA for all matriculants by state


# The following sources were referenced while writing this code:
# https://r4ds.had.co.nz/tidy-data.html
# https://stackoverflow.com/questions/32054368/use-first-row-data-as-column-names-in-r
# https://stackoverflow.com/questions/64375578/concatenate-column-name-and-1st-row-in-r
# https://stat.ethz.ch/R-manual/R-devel/library/base/html/rep.html
