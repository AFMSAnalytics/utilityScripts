#' Calculate the standard error
#' 
#' The \code{'sterr()'} function calculates the standard error of a variable,
#' taking into account \code{NA} values, either to keep or remove them
#' depending on the user input to the \code{na.rm} argument.
#' 
#' @param x A numeric vector for which the standard error will be calculated
#'   from.
#' @param na.rm If *NA* values are not an issue, then *FALSE*,
#'   otherwise, *TRUE*.
#'   
#' @keywords se std err
#' 
#' @export
#' 
#' @example
#' 

sterr <- function(x, na.rm = FALSE) {
  if (na.rm == FALSE) {
    se <-  (sd(x, na.rm = na.rm) / ( (length(x)) ^ 0.5) )
  } else if (na.rm == TRUE) {
    se <- (sd(x, na.rm = na.rm) / ( (length(x) - sum(is.na(x))) ^ 0.5) )
  } else {
    stop("ERROR MESSAGE:\nThe variable 'na.rm' must be set to either 'TRUE' or 'FALSE'.\n")
  }
}
