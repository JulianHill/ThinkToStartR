foursquare_auth <-function(app_name,app_id,app_secret)
{require(RCurl)
 require(httr)
 
 
 ## getting callback URL
 full_url <- oauth_callback()
 full_url <- gsub("(.*localhost:[0-9]{1,5}/).*", x=full_url, replacement="\\1")
 message <- paste("Copy and paste into Site URL on Foursquare App Settings:", 
                  full_url, "\nWhen done, press any key to continue...")
 
 ## prompting user to introduce callback URL in app page
 invisible(readline(message))
 
 
 ## a simplified version of the example in httr package
 foursquare <- oauth_endpoint(
   authorize = "https://foursquare.com/oauth2/authenticate",
   access = "https://foursquare.com/oauth2/access_token")  
 myapp <- oauth_app(app_name, app_id, app_secret)
 
 scope <- NULL
 fs_oauth <- oauth2.0_token(foursquare, myapp,scope=scope, type = "application/x-www-form-urlencoded", cache=FALSE)  
 
 
 tmp <- strsplit(toString(names(fs_oauth$credentials)), '"')
 token <- tmp[[1]][4]
 
 return(token)
 
}