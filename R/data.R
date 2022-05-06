#' MCAT and GPA for all 2021-2022 medical school applicants.
#'
#' Mean total MCAT exam/sub-section scores and combined/science/non-science GPAs for all 2021-2022 applicants
#'@format A data frame of 36 rows representing one statistic (e.g. MCAT subsection score) for one year and 5 variables
#' \describe{
#' \item{category}{(character) Category of measurement, e.g. total MCAT exam score or non-science GPA.}
#' \item{year}{(character) Start and end year of admissions cycle in which observation was recorded.}
#' \item{mean}{(numeric) Average value of category's statistic.}
#' \item{SD}{(numeric) Standard deviation of category's statistic.}
#' \item{num_apps}{(numeric) Number of applicable observations.}
#' }
#' @source 2021 FACTS: Applicants and Matriculants Data, Association of American Medical Colleges
#'   <https://www.aamc.org/data-reports/students-residents/interactive-data/2021-facts-applicants-and-matriculants-data>.
"astats_all"

#' MCAT and GPA for all 2021-2022 medical school matriculants.
#'
#' Mean total MCAT exam/sub-section scores and combined/science/non-science GPAs for all 2021-2022 matriculants
#'@format A data frame of 36 rows representing one statistic (e.g. MCAT subsection score) for one year and 5 variables
#' \describe{
#' \item{category}{(character) Category of measurement, e.g. total MCAT exam score or non-science GPA.}
#' \item{year}{(character) Start and end year of admissions cycle in which observation was recorded.}
#' \item{mean}{(numeric) Average value of category's statistic.}
#' \item{SD}{(numeric) Standard deviation of category's statistic.}
#' \item{num_apps}{(numeric) Number of applicable observations.}
#' }
#' @source 2021 FACTS: Applicants and Matriculants Data, Association of American Medical Colleges
#'   <https://www.aamc.org/data-reports/students-residents/interactive-data/2021-facts-applicants-and-matriculants-data>.
"mstats_all"

#' MCAT and GPA for all 2021-2022 medical school applicants by major.
#'
#' Mean total MCAT exam/sub-section scores and combined/science/non-science GPAs for all 2021-2022 applicants by undergraduate major
#'@format A data frame of 8 rows and 18 variables
#' \describe{
#' \item{major}{(character) Undergraduate major.}
#' \item{CPBS_mean}{(numeric) Mean score for the Chemical and Physical Foundations sub-section of the MCAT exam.}
#' \item{CPBS_SD}{(numeric) Standard deviation score for the Chemical and Physical Foundations sub-section of the MCAT exam.}
#' \item{CARS_mean}{(numeric) Mean score for the Critical Analysis and Reasoning sub-section of the MCAT exam.}
#' \item{CARS_SD}{(numeric) Standard deviation score for the Critical Analysis and Reasoning sub-section of the MCAT exam.}
#' \item{BBLS_mean}{(numeric) Mean score for the Biological and Biochemical Foundations sub-section of the MCAT exam.}
#' \item{BBLS_SD}{(numeric) Standard deviation score for the Biological and Biochemical Foundations sub-section of the MCAT exam.}
#' \item{PSBB_mean}{(numeric) Mean score for the Psychological and Sociological Foundations sub-section of the MCAT exam.}
#' \item{PSBB_SD}{(numeric) Standard deviation score for the Psychological and Sociological Foundations sub-section of the MCAT exam.}
#' \item{MCAT_mean}{(numeric) Mean total MCAT exam score.}
#' \item{MCAT_SD}{(numeric) Standard deviation of MCAT exam score.}
#' \item{sGPA_mean}{(numeric) Mean science grade point average (includes mathematics, physics, chemistry, biochemistry, and biology classes.}
#' \item{sGPA_SD}{(numeric) Standard deviation of science grade point average}
#' \item{aoGPA_mean}{(numeric) Mean grade point average for 'all-other' (i.e. non-science) classes.}
#' \item{aoGPA_SD}{(numeric) Standard deviation of grade point average for all-other classes.}
#' \item{cGPA_mean}{(numeric) Mean cumulative grade point average.}
#' \item{cGPA_SD}{(numeric) Standard deviation of cumulative grade point average.}
#' \item{num_apps}{(numeric) Number of applicants.}
#' }
#' @source 2021 FACTS: Applicants and Matriculants Data, Association of American Medical Colleges
#'   <https://www.aamc.org/data-reports/students-residents/interactive-data/2021-facts-applicants-and-matriculants-data>.
"astats_major"

#' MCAT and GPA for all 2021-2022 medical school matriculants by major.
#'
#' Mean total MCAT exam/sub-section scores and combined/science/non-science GPAs for all 2021-2022 matriculants by undergraduate major
#'@format A data frame of 8 rows and 18 variables
#' \describe{
#' \item{major}{(character) Undergraduate major.}
#' \item{CPBS_mean}{(numeric) Mean score for the Chemical and Physical Foundations sub-section of the MCAT exam.}
#' \item{CPBS_SD}{(numeric) Standard deviation score for the Chemical and Physical Foundations sub-section of the MCAT exam.}
#' \item{CARS_mean}{(numeric) Mean score for the Critical Analysis and Reasoning sub-section of the MCAT exam.}
#' \item{CARS_SD}{(numeric) Standard deviation score for the Critical Analysis and Reasoning sub-section of the MCAT exam.}
#' \item{BBLS_mean}{(numeric) Mean score for the Biological and Biochemical Foundations sub-section of the MCAT exam.}
#' \item{BBLS_SD}{(numeric) Standard deviation score for the Biological and Biochemical Foundations sub-section of the MCAT exam.}
#' \item{PSBB_mean}{(numeric) Mean score for the Psychological and Sociological Foundations sub-section of the MCAT exam.}
#' \item{PSBB_SD}{(numeric) Standard deviation score for the Psychological and Sociological Foundations sub-section of the MCAT exam.}
#' \item{MCAT_mean}{(numeric) Mean total MCAT exam score.}
#' \item{MCAT_SD}{(numeric) Standard deviation of MCAT exam score.}
#' \item{sGPA_mean}{(numeric) Mean science grade point average (includes mathematics, physics, chemistry, biochemistry, and biology classes.}
#' \item{sGPA_SD}{(numeric) Standard deviation of science grade point average}
#' \item{aoGPA_mean}{(numeric) Mean grade point average for 'all-other' (i.e. non-science) classes.}
#' \item{aoGPA_SD}{(numeric) Standard deviation of grade point average for all-other classes.}
#' \item{cGPA_mean}{(numeric) Mean cumulative grade point average.}
#' \item{cGPA_SD}{(numeric) Standard deviation of cumulative grade point average.}
#' \item{num_apps}{(numeric) Number of applicants.}
#' }
#' @source 2021 FACTS: Applicants and Matriculants Data, Association of American Medical Colleges
#'   <https://www.aamc.org/data-reports/students-residents/interactive-data/2021-facts-applicants-and-matriculants-data>.
"mstats_major"

#' MCAT and GPA for all 2021-2022 medical school applicants by race.
#'
#' Mean total MCAT exam/sub-section scores and combined/science/non-science GPAs for all 2021-2022 applicants by race and ethnicity
#'@format A data frame of 99 rows and 5 variables
#' \describe{
#' \item{category}{(character) Category of measurement, e.g. total MCAT exam score or non-science GPA.}
#' \item{race}{(character) Race and ethnicity.}
#' \item{mean}{(numeric) Average value of category's statistic.}
#' \item{SD}{(numeric) Standard deviation of category's statistic.}
#' \item{num_apps}{(numeric) Number of applicable observations.}
#' }
#' @source 2021 FACTS: Applicants and Matriculants Data, Association of American Medical Colleges
#'   <https://www.aamc.org/data-reports/students-residents/interactive-data/2021-facts-applicants-and-matriculants-data>.
"astats_race"

#' MCAT and GPA for all 2021-2022 medical school matriculants by race.
#'
#' Mean total MCAT exam/sub-section scores and combined/science/non-science GPAs for all 2021-2022 matriculants by race and ethnicity
#'@format A data frame of 99 rows and 5 variables
#' \describe{
#' \item{category}{(character) Category of measurement, e.g. total MCAT exam score or non-science GPA.}
#' \item{race}{(character) Race and ethnicity.}
#' \item{mean}{(numeric) Average value of category's statistic.}
#' \item{SD}{(numeric) Standard deviation of category's statistic.}
#' \item{num_apps}{(numeric) Number of applicable observations.}
#' }
#' @source 2021 FACTS: Applicants and Matriculants Data, Association of American Medical Colleges
#'   <https://www.aamc.org/data-reports/students-residents/interactive-data/2021-facts-applicants-and-matriculants-data>.
"mstats_race"

#' MCAT and GPA for all 2021-2022 medical school applicants by sex.
#'
#' Mean total MCAT exam/sub-section scores and combined/science/non-science GPAs for all 2021-2022 applicants by sex
#'@format A data frame of 12 rows and 19 variables
#' \describe{
#' \item{year}{(character) Start and end year of admissions cycle in which observation was recorded.}
#' \item{sex}{(character) Biological sex.}
#' \item{CPBS_mean}{(numeric) Mean score for the Chemical and Physical Foundations sub-section of the MCAT exam.}
#' \item{CPBS_SD}{(numeric) Standard deviation score for the Chemical and Physical Foundations sub-section of the MCAT exam.}
#' \item{CARS_mean}{(numeric) Mean score for the Critical Analysis and Reasoning sub-section of the MCAT exam.}
#' \item{CARS_SD}{(numeric) Standard deviation score for the Critical Analysis and Reasoning sub-section of the MCAT exam.}
#' \item{BBLS_mean}{(numeric) Mean score for the Biological and Biochemical Foundations sub-section of the MCAT exam.}
#' \item{BBLS_SD}{(numeric) Standard deviation score for the Biological and Biochemical Foundations sub-section of the MCAT exam.}
#' \item{PSBB_mean}{(numeric) Mean score for the Psychological and Sociological Foundations sub-section of the MCAT exam.}
#' \item{PSBB_SD}{(numeric) Standard deviation score for the Psychological and Sociological Foundations sub-section of the MCAT exam.}
#' \item{MCAT_mean}{(numeric) Mean total MCAT exam score.}
#' \item{MCAT_SD}{(numeric) Standard deviation of MCAT exam score.}
#' \item{sGPA_mean}{(numeric) Mean science grade point average (includes mathematics, physics, chemistry, biochemistry, and biology classes.}
#' \item{sGPA_SD}{(numeric) Standard deviation of science grade point average}
#' \item{aoGPA_mean}{(numeric) Mean grade point average for 'all-other' (i.e. non-science) classes.}
#' \item{aoGPA_SD}{(numeric) Standard deviation of grade point average for all-other classes.}
#' \item{cGPA_mean}{(numeric) Mean cumulative grade point average.}
#' \item{cGPA_SD}{(numeric) Standard deviation of cumulative grade point average.}
#' \item{num_apps}{(numeric) Number of applicants.}
#' }
#' @source 2021 FACTS: Applicants and Matriculants Data, Association of American Medical Colleges
#'   <https://www.aamc.org/data-reports/students-residents/interactive-data/2021-facts-applicants-and-matriculants-data>.
"astats_sex"

#' MCAT and GPA for all 2021-2022 medical school matriculants by sex.
#'
#' Mean total MCAT exam/sub-section scores and combined/science/non-science GPAs for all 2021-2022 matriculants by sex
#'@format A data frame of 12 rows and 19 variables
#' \describe{
#' \item{year}{(character) Start and end year of admissions cycle in which observation was recorded.}
#' \item{sex}{(character) Biological sex.}
#' \item{CPBS_mean}{(numeric) Mean score for the Chemical and Physical Foundations sub-section of the MCAT exam.}
#' \item{CPBS_SD}{(numeric) Standard deviation score for the Chemical and Physical Foundations sub-section of the MCAT exam.}
#' \item{CARS_mean}{(numeric) Mean score for the Critical Analysis and Reasoning sub-section of the MCAT exam.}
#' \item{CARS_SD}{(numeric) Standard deviation score for the Critical Analysis and Reasoning sub-section of the MCAT exam.}
#' \item{BBLS_mean}{(numeric) Mean score for the Biological and Biochemical Foundations sub-section of the MCAT exam.}
#' \item{BBLS_SD}{(numeric) Standard deviation score for the Biological and Biochemical Foundations sub-section of the MCAT exam.}
#' \item{PSBB_mean}{(numeric) Mean score for the Psychological and Sociological Foundations sub-section of the MCAT exam.}
#' \item{PSBB_SD}{(numeric) Standard deviation score for the Psychological and Sociological Foundations sub-section of the MCAT exam.}
#' \item{MCAT_mean}{(numeric) Mean total MCAT exam score.}
#' \item{MCAT_SD}{(numeric) Standard deviation of MCAT exam score.}
#' \item{sGPA_mean}{(numeric) Mean science grade point average (includes mathematics, physics, chemistry, biochemistry, and biology classes.}
#' \item{sGPA_SD}{(numeric) Standard deviation of science grade point average}
#' \item{aoGPA_mean}{(numeric) Mean grade point average for 'all-other' (i.e. non-science) classes.}
#' \item{aoGPA_SD}{(numeric) Standard deviation of grade point average for all-other classes.}
#' \item{cGPA_mean}{(numeric) Mean cumulative grade point average.}
#' \item{cGPA_SD}{(numeric) Standard deviation of cumulative grade point average.}
#' \item{num_apps}{(numeric) Number of applicants.}
#' }
#' @source 2021 FACTS: Applicants and Matriculants Data, Association of American Medical Colleges
#'   <https://www.aamc.org/data-reports/students-residents/interactive-data/2021-facts-applicants-and-matriculants-data>.
"mstats_sex"
