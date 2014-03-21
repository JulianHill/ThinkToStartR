ThinkToStart <- function(fun,...){

 #status=FALSE
  
	#AA = 'foo'
switch(fun, 
TwitterAuth={

status  <- TwitterAuth(...)



},
SentimentCloud={
 
    SentimentCloud(...)  
 
  
},
{
   print("No function defined")
}
)
  
  
  
  
  
  #return(object)
}