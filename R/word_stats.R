#' print some basic info about the words used in this package
#'
#' @keywords internal
#'
stats <- function(){
  cat("Number of adjectives:", length(adjectives), "\n")
  cat("Number of nouns:", length(nouns), "\n")
  cat("Number of combinations:", memorids:::num_combinations(), "\n")
  cat("Max length of adjective:", max(unlist(lapply(adjectives, nchar))), "\n")
  cat("Max length of noun:", max(unlist(lapply(nouns, nchar))), "\n")
  cat("Mean iterations before collision:",
      memorids:::mean_time_before_collision(), "\n")
}
