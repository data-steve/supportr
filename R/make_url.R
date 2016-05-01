#' Make URLs
#'
#' Make URLs.
#'
#' @param acct username

linkedin_url <- function (acct) {
  if (grepl("^https://www.linkedin.com/in/", acct)) {
    url <- acct
  } else {
    url <- paste0("https://www.linkedin.com/in/",acct )
  }
  url
}

#' @param acct username
#' @param repo repo name
github_url <- function (acct) {
  if (grepl("^https://github.com", acct)) {
    url <- acct
  } else {
    url <- paste0("https://github.com/",acct )
  }
  url
}

# github_repo_url <- function (acct, repo) {
#   if (grepl("^https://github.com/", acct)) {
#     url <- strgithub.com/acct
#   } else {
#     url <- paste0("https://github.com/",acct )
#   }
#   url
# }
