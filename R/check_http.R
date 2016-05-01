#' Checks If URL Exists
#'
#' Checks If URL Exists.
#'
#' @param x

check_http <- function (x) {
  !httr::http_error(x)
}
