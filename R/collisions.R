#' Run `memorid()` until a collision is detected
#'
#' Returns the number of runs taken to reach the collision
#'
#' @return the number of runs taken to reach the collision
#'
#' @keywords internal
#'
find_collision <- function(){
  iteration <- 1
  memorids_list <- ""
  while (TRUE) {
    new_memorid <- memorids::memorid()
    if ( !new_memorid %in% memorids_list ) {
      memorids_list[[iteration]] <- new_memorid
    } else {
      return(iteration)
    }
    iteration <- iteration + 1
  }
}

#' repeatedly runs `find_collision()` and returns the mean of the results
#'
#' Returns the mean of the `find_collision()` results
#'
#' @param num the number of `find_collision()` runs to perform. Default: 100
#'
#' @return the mean of multiple `find_collision()` results
#'
#' @keywords internal
#
mean_time_before_collision <- function(num = 100){
  collision_list <- list()
  while (num > 0){
    collision_list[[num]] <- memorids:::find_collision()
    num <- num - 1
  }
  round(mean(unlist(collision_list)))
}
