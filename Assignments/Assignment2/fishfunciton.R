#' Fish Function
#' 
#' 

# make a data set for fish
fish<- data.frame(
  row.names = c("Halibut", "Red Snapper", "Tuna", "Big Guy", "Little Blue"),
  Santa_Barbara = c(100, 30, 50, 20, 90), 
  Long_Beach = c(80, 10, 20, 90, 70),
  Santa_Cruz = c(90, 80, 200, 55, 40), 
  Portland = c(290, 50, 80, 55, 40))

Price = c(100, 70, 90, 150, 90)

fish_function<- function(Location){
  most_frequent = list(colnames(fish), rownames(fish)[apply(fish, 2, which.max)])
  
  
  
  
  #fish_cols = c(Santa_Barbara, Long_Beach, Santa_Cruz, Portland)
  #revenue_location = lapply(.SD function(x) x*fish[['Price']], )

} 
