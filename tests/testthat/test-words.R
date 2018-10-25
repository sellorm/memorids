context("adjectives and nouns")

test_that("words only have lower case characters", {
  expect_match(memorids:::adjectives, "^[a-z]*$")
  expect_match(memorids:::nouns, "^[a-z]*$")
})

test_that("Both lists are character vectors", {
  expect_is(memorids:::adjectives, "character")
  expect_is(memorids:::nouns, "character")
})

test_that("there are no duplicates", {
  expect_false(unique(duplicated(memorids:::adjectives)))
  expect_false(unique(duplicated(memorids:::nouns)))
})
