context("output checks")

test_that("output is the correct format", {
  expect_match(memorids::memorid(), "^[a-z]*-[a-z]*$")
})

test_that("sep produces the correct output", {
  expect_match(memorids::memorid(sep = "+"), "^[a-z]*\\+[a-z]*$")
})

test_that("output is a single string", {
  expect_equal(length(memorids::memorid()), 1)
})
