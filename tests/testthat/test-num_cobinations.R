context("number of combinations")

test_that("only a single item is returned", {
  expect_equal(length(memorids:::num_combinations()), 1)
})

test_that("the output in an integer", {
  expect_is(memorids:::num_combinations(), "integer")
})
