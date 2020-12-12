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
