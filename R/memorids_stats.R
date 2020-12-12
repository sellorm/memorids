
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

