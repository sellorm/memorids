context("adjectives and nouns")

test_that("words only have lower case characters", {
  expect_match(adjectives, "^[a-z]*$")
  expect_match(nouns, "^[a-z]*$")
})

test_that("Both lists are character vectors", {
  expect_is(adjectives, "character")
  expect_is(nouns, "character")
})

test_that("there are no duplicates", {
  expect_false(unique(duplicated(adjectives)))
  expect_false(unique(duplicated(nouns)))
})
