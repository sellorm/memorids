context("word_stats - prep")

memorids_info <- memorids:::memorids_stats(3)


context("word_stats - adjectives")

test_that("only a single item is returned", {
  expect_equal(length(memorids_info$num_adjs), 1)
})

test_that("the output is an integer", {
  expect_is(memorids_info$num_adjs, "integer")
})


context("word_stats - nouns")

test_that("only a single item is returned", {
  expect_equal(length(memorids_info$num_nouns), 1)
})

test_that("the output is an integer", {
  expect_is(memorids_info$num_nouns, "integer")
})


context("word_stats - max length of adjectives")

test_that("only a single item is returned", {
  expect_equal(length(memorids_info$max_len_adj), 1)
})

test_that("the output is an integer", {
  expect_is(memorids_info$max_len_adj, "integer")
})


context("word_stats - max length of nouns")

test_that("only a single item is returned", {
  expect_equal(length(memorids_info$max_len_noun), 1)
})

test_that("the output is an integer", {
  expect_is(memorids_info$max_len_noun, "integer")
})


context("word_stats - mean time before collision")

test_that("only a single item is returned", {
  expect_equal(length(memorids_info$mtbc), 1)
})

test_that("the output is numeric", {
  expect_is(memorids_info$mtbc, "numeric")
})


context("check returned object class")

test_that("the class is memorids_info", {
  expect_s3_class(memorids_info, "memorids_info")
})
