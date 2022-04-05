
<!-- README.md is generated from README.Rmd. Please edit that file -->

# medapps2021

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/medapps2021)](https://CRAN.R-project.org/package=medapps2021)
<!-- badges: end -->

`medapps2021` contains tidy format data from the Association of American
Medical College’s 2021 FACTS: Applicants and Matriculants Data website.
Datasets include the mean entrance exam scores and GPAs of medical
school applicants and matriculants for the 2021-2022 admissions cycle
across several different demographics.

## Installation

You can install the development version of medapps2021 like so:

    #> Downloading GitHub repo statsmed-sheep/medapps2021@HEAD
    #> magrittr (2.0.2 -> 2.0.3) [CRAN]
    #> glue     (1.6.1 -> 1.6.2) [CRAN]
    #> Installing 2 packages: magrittr, glue
    #> Installing packages into '/private/var/folders/m3/0v7qg7ks0zqfwl1qbrhg1tmr0000gn/T/RtmplC1ZTq/temp_libpath111e55fe02329'
    #> (as 'lib' is unspecified)
    #> 
    #> The downloaded binary packages are in
    #>  /var/folders/m3/0v7qg7ks0zqfwl1qbrhg1tmr0000gn/T//RtmpVNQOOO/downloaded_packages
    #> * checking for file ‘/private/var/folders/m3/0v7qg7ks0zqfwl1qbrhg1tmr0000gn/T/RtmpVNQOOO/remotes1122127e08ca5/statsmed-sheep-medapps2021-acc88c3/DESCRIPTION’ ... OK
    #> * preparing ‘medapps2021’:
    #> * checking DESCRIPTION meta-information ... OK
    #> * checking for LF line-endings in source and make files and shell scripts
    #> * checking for empty or unneeded directories
    #> * building ‘medapps2021_0.0.0.9000.tar.gz’
    #> Installing package into '/private/var/folders/m3/0v7qg7ks0zqfwl1qbrhg1tmr0000gn/T/RtmplC1ZTq/temp_libpath111e55fe02329'
    #> (as 'lib' is unspecified)

## Data

-   `astats_all`: mean total MCAT exam/sub-section scores and
    combined/science/non-science GPAs for all 2021-2022 applicants.
-   `mstats_all`: mean total MCAT exam/sub-section scores and
    combined/science/non-science GPAs for all 2021-2022 matriculants.

## Example

The tidy format of the data allows the use of tidyverse packages like
`dplyr` and `ggplot2` for data wrangling and visualization,
respectively.

    #> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
    #> ✓ ggplot2 3.3.5     ✓ purrr   0.3.4
    #> ✓ tibble  3.1.6     ✓ dplyr   1.0.7
    #> ✓ tidyr   1.1.4     ✓ stringr 1.4.0
    #> ✓ readr   2.1.2     ✓ forcats 0.5.1
    #> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    #> x dplyr::filter() masks stats::filter()
    #> x dplyr::lag()    masks stats::lag()

<img src="man/figures/README-example-1.png" width="100%" />

## Contributor(s)

Clara Li
