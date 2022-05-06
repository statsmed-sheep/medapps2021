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
  mutate(category = Applicants, mean = as.numeric(Mean), SD = as.numeric(SD), num_apps = as.numeric(`NA`), .keep = "unused") %>%
  select(category, year, mean, SD, num_apps)

usethis::use_data(astats_all, overwrite = TRUE)

# MCAT and GPA for all matriculants

mstats_all <- stats_all[c(23:40),] %>%
  row_to_names(row_number = 1)

colnames(mstats_all)[2] <- "statistic"

mstats_all <- mstats_all %>%
  pivot_longer(c(`2018-2019`, `2019-2020`, `2020-2021`, `2021-2022`), names_to = "year", values_to = "numbers") %>%
  fill(Matriculants) %>%
  pivot_wider(names_from = statistic, values_from = numbers) %>%
  mutate(category = Matriculants, mean = as.numeric(Mean), SD = as.numeric(SD), num_apps = as.numeric(`NA`), .keep = "unused") %>%
  select(category, year, mean, SD, num_apps)

usethis::use_data(mstats_all, overwrite = TRUE)

# MCAT and GPA for all applicants by major

astats_major <- stats_major[c(4:13),] %>%
  row_to_names(row_number = 1)

astats_major <- astats_major[-1,]
colnames(astats_major) <- c('major', 'CPBS_mean', 'CPBS_SD', 'CARS_mean', 'CARS_SD', 'BBLS_mean', 'BBLS_SD', 'PSBB_mean', 'PSBB_SD', 'MCAT_mean', 'MCAT_SD', 'sGPA_mean', 'sGPA_SD', 'aoGPA_mean', 'aoGPA_SD', 'cGPA_mean', 'cGPA_SD', 'num_apps')
astats_major <- astats_major %>%
  mutate(across(.cols = 2:18, .fns = as.numeric))

usethis::use_data(astats_major, overwrite = TRUE)

# MCAT and GPA for all matriculants by major

mstats_major <- stats_major[c(15:24),] %>%
  row_to_names(row_number = 1)

mstats_major <- mstats_major[-1,]
colnames(mstats_major) <- c('major', 'CPBS_mean', 'CPBS_SD', 'CARS_mean', 'CARS_SD', 'BBLS_mean', 'BBLS_SD', 'PSBB_mean', 'PSBB_SD', 'MCAT_mean', 'MCAT_SD', 'sGPA_mean', 'sGPA_SD', 'aoGPA_mean', 'aoGPA_SD', 'cGPA_mean', 'cGPA_SD', 'num_apps')
mstats_major <- mstats_major %>%
  mutate(across(.cols = 2:18, .fns = as.numeric))

usethis::use_data(mstats_major, overwrite = TRUE)

# MCAT and GPA for all applicants by race/ethnicity

astats_race <- stats_race[c(4:21),] %>%
  row_to_names(row_number = 1)

colnames(astats_race) <- c("category", "statistic", "american_indian", "asian", "black", "hispanic_latino", "pacific_islander", "white", "other", "multiple", "unknown", "intl", "total")

astats_race <- astats_race %>%
  fill(category) %>%
  pivot_longer(c("american_indian", "asian", "black", "hispanic_latino", "pacific_islander", "white", "other", "multiple", "unknown", "intl", "total"), names_to = "race", values_to = "value")

astats_race$statistic[177:187] <- "num_apps"

astats_race <- astats_race %>%
  pivot_wider(names_from = statistic, values_from = value) %>%
  mutate(across(.cols = 3:5, .fns = as.numeric)) %>%
  rename(mean = Mean)

usethis::use_data(astats_race, overwrite = TRUE)

# MCAT and GPA for all matriculants by race/ethnicity

mstats_race <- stats_race[c(23:40),] %>%
  row_to_names(row_number = 1)

colnames(mstats_race) <- c("category", "statistic", "american_indian", "asian", "black", "hispanic_latino", "pacific_islander", "white", "other", "multiple", "unknown", "intl", "total")

mstats_race <- mstats_race %>%
  fill(category) %>%
  pivot_longer(c("american_indian", "asian", "black", "hispanic_latino", "pacific_islander", "white", "other", "multiple", "unknown", "intl", "total"), names_to = "race", values_to = "value")

mstats_race$statistic[177:187] <- "num_apps"

mstats_race <- mstats_race %>%
  pivot_wider(names_from = statistic, values_from = value) %>%
  mutate(across(.cols = 3:5, .fns = as.numeric)) %>%
  rename(mean = Mean)

usethis::use_data(mstats_race, overwrite = TRUE)

# MCAT and GPA for all applicants by sex

astats_sex <- astats_sex[c(4:17),] %>%
  row_to_names(row_number = 1)

astats_sex <- astats_sex[-1,]
colnames(astats_sex) <- c('year', 'sex', 'CPBS_mean', 'CPBS_SD', 'CARS_mean', 'CARS_SD', 'BBLS_mean', 'BBLS_SD', 'PSBB_mean', 'PSBB_SD', 'MCAT_mean', 'MCAT_SD', 'sGPA_mean', 'sGPA_SD', 'aoGPA_mean', 'aoGPA_SD', 'cGPA_mean', 'cGPA_SD', 'num_apps')
astats_sex <- astats_sex %>%
  fill(year) %>%
  mutate(across(.cols = 3:19, .fns = as.numeric))

usethis::use_data(astats_sex, overwrite = TRUE)

# MCAT and GPA for all matriculants by sex

mstats_sex <- mstats_sex[c(4:17),] %>%
  row_to_names(row_number = 1)

mstats_sex <- mstats_sex[-1,]
colnames(mstats_sex) <- c('year', 'sex', 'CPBS_mean', 'CPBS_SD', 'CARS_mean', 'CARS_SD', 'BBLS_mean', 'BBLS_SD', 'PSBB_mean', 'PSBB_SD', 'MCAT_mean', 'MCAT_SD', 'sGPA_mean', 'sGPA_SD', 'aoGPA_mean', 'aoGPA_SD', 'cGPA_mean', 'cGPA_SD', 'num_apps')
mstats_sex <- mstats_sex %>%
  fill(year) %>%
  mutate(across(.cols = 3:19, .fns = as.numeric))

usethis::use_data(mstats_sex, overwrite = TRUE)


# The following sources were referenced while writing this code:
# https://r4ds.had.co.nz/tidy-data.html
# https://stackoverflow.com/questions/32054368/use-first-row-data-as-column-names-in-r
# https://stackoverflow.com/questions/64375578/concatenate-column-name-and-1st-row-in-r
# https://stat.ethz.ch/R-manual/R-devel/library/base/html/rep.html
