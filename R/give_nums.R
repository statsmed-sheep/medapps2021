give_stats <- function(regexp = ".") {

  overall <- tibble(
    Category = "Overall",
    Group = "Overall",
    Mean_MCAT_Score = stats_all[[32, 6]],
    Mean_GPA = stats_all[[38, 6]]
  )

  majors <- stats_major[c(17:23), c(1, 10, 16)] %>%
    mutate(
      Category = "major", .before = names(.)[1]
    ) %>%
    setNames(names(overall))

  race_groups <- stats_race[32, 3:12]
  names(race_groups) <- c(
    "Indigenous American",
    "Asian",
    "Black",
    "Hispanic or Latino",
    "Pacific_Islander",
    "White",
    "Other",
    "Multiple",
    "Unknown",
    "Non-US"
  )
  races <- race_groups %>%
    pivot_longer(cols = everything(), names_to = "Group", values_to = "Mean_MCAT_Score") %>%
    mutate(
      Mean_GPA = NA
    ) %>%
    mutate(
      Category = "race", .before = names(.)[1]
    ) %>%
    setNames(names(overall))

  sexes <- mstats_sex[15:16, c(2, 11, 17)] %>%
    mutate(
      Category = "sex", .before = names(.)[1]
    ) %>%
    setNames(names(overall))

  df <- bind_rows(
    overall,
    majors,
    races,
    sexes
  ) %>%
    mutate(
      Mean_MCAT_Score = as.double(Mean_MCAT_Score),
      Mean_GPA = as.double(Mean_GPA)
    )
  df %>%
    filter(stringr::str_detect(Group, regexp))
}
