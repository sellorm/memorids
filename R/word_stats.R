#' print some basic info about the words used in this package
#' @param num_runs the number of times to run the collision test
#' @export
#'
memorids_stats <- function(num_runs = 100){
  num_adjs <- length(adjectives)
  num_nouns <- length(nouns)
  num_combs <- num_combinations()
  max_len_adj <- max(unlist(lapply(adjectives, nchar)))
  max_len_noun <- max(unlist(lapply(nouns, nchar)))
  mtbc <- mean_time_before_collision(num = num_runs)
  results <- stats::setNames(
    list(num_adjs, num_nouns, num_combs, max_len_adj, max_len_noun, mtbc),
    c("num_adjs", "num_nouns", "num_combs", "max_len_adj", "max_len_noun",
      "mtbc")
  )
  structure(results, class = "memorids_info")
}

#' @export
print.memorids_info <- function(x, ...){
  cat("memorids info...\n")
  cat("  Number of adjectives              :", x$num_adjs, "\n")
  cat("  Number of nouns                   :", x$num_nouns, "\n")
  cat("  Number of combinations            :", x$num_combs, "\n")
  cat("  Max length of adjectives          :", x$max_len_adj, "\n")
  cat("  Max length of nouns               :", x$max_len_noun, "\n")
  cat("  Mean iterations before collision  :", x$mtbc, "\n")
  invisible(x)
}
