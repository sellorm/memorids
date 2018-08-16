#' Get a memorable ID
#'
#' Returns a memorable ID string
#'
#' @param sep the seperator. Deafult is "-"
#'
#' @return a character string
#' @export
memorid <- function(sep = "-") {
  paste0(sample(adjectives, 1), sep, sample(nouns, 1))
}
