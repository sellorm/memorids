context("collisions")

test_that("only a single item is returned", {
  expect_equal(length(memorids:::find_collision()), 1)
})

test_that("the output in an integer", {
  expect_is(memorids:::find_collision(), "numeric")
})

# MTBC
test_that("only a single item is returned", {
  expect_equal(length(memorids:::mean_time_before_collision(3)), 1)
})

test_that("the output in an integer", {
  expect_is(memorids:::mean_time_before_collision(3), "numeric")
})
