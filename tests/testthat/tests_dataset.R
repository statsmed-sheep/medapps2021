library(testthat)

# astats_all
testthat::test_that("Correct number of columns in astats_all", {
  expect_equal(ncol(astats_all), 5)
})

# mstats_all
test_that("Correct number of rows in mstats_all", {
  expect_equal(nrow(mstats_all), 36)
})
