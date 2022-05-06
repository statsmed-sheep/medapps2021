library(testthat)

# astats_all
testthat::test_that("Correct number of columns in astats_all", {
  expect_equal(ncol(astats_all), 5)
})

# mstats_all
test_that("Correct number of rows in mstats_all", {
  expect_equal(nrow(mstats_all), 36)
})

# astats_major

testthat::test_that("Correct number of columns in astats_major", {
  expect_equal(ncol(astats_major), 18)
})

# mstats_major

testthat::test_that("Correct number of rows in mstats_major", {
  expect_equal(nrow(mstats_major), 8)
})

# astats_race

testthat::test_that("Correct number of columns in astats_race", {
  expect_equal(ncol(astats_race), 5)
})

# mstats_race

testthat::test_that("Correct number of rows in mstats_race", {
  expect_equal(nrow(mstats_race), 99)
})

# astats_sex

testthat::test_that("Correct number of columns in astats_sex", {
  expect_equal(ncol(astats_sex), 19)
})

# mstats_sex

testthat::test_that("Correct number of rows in mstats_sex", {
  expect_equal(nrow(mstats_sex), 12)
})
