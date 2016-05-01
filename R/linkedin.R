#' Title
#'
#' Description
#'
#' @param acct either username or url of linkedin acct
#' @param skills the skills that the RDev is requesting endorsement
#' @return
#' @export
#' @examples

linkedin_me <- function(acct, skills =NULL){
  function() {
  if (is.null(skills)){
    message(paste0("\n\nPlease consider endorsing me\n",
                   "  for skills we share in common.\n\n"))
  } else {
    message(paste0("\n\nPlease consider endorsing me \n",
                   "  for skills we share in common OR\n",
                   "  the following:\n")
            , paste("  - ",skills, "\n"),"\n")
  }
  Sys.sleep(2)
  browseURL(make_url(acct))
  }
}
