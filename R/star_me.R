#' Title
#' 
#' Description
#' 
#' @return
#' @references
#' @keywords
#' @export
#' @seealso
#' @examples 


-----
https://github.com/settings/applications/345763
Client ID
b610382bf842290fab55
Client Secret
4d2a675901dbfa13fa8391ce1c9c473b50a1e996

------
https://github.com/cscheid/rgithub/blob/59a73ea6a88e8d6314e9776a0265f9a53f923ebc/R/activity.R
star.repository <- function(owner, repo, ctx = get.github.context())
  .api.put.request(ctx, c("user", "starred", owner, repo), expect.code=204)

is.repository.starred.by.me <- function(owner, repo, ctx = get.github.context())
  .api.test.request(ctx, c("user", "starred", owner, repo))


----
hadley's demo

library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at at
#    https://github.com/settings/applications. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("github",
  key = "56b637a5baffac62cad9",
  secret = "8e107541ae1791259e9987d544ca568633da2ebf")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/rate_limit", gtoken)
stop_for_status(req)
content(req)

# OR:
req <- with_config(gtoken, GET("https://api.github.com/rate_limit"))
stop_for_status(req)
