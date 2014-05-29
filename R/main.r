ThinkToStart <- function(fun,...){

 
switch(fun, 
TwitterAuth={

status  <- TwitterAuth(...)



},
SentimentCloud={
 
    SentimentCloud(...)  
 
  
},
Foursquare_auth={
  token <- foursquare_auth(...)
},

{
   print("No function defined")
}
)
  
  
  
  
  
  #return(object)
}