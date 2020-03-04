#' Fish Function
#' 
#' 

# make a data set for fish
fish<- data.frame(
  Species = c("Halibut", "Red Snapper", "Tuna", "Big Guy", "Little Blue"),
  Price = c(100, 70, 90, 150, 90),
  Santa_Barbara = c(100, 30, 50, 20, 90), 
  Long_Beach = c(90, 10, 20, 80, 70),
  Santa_Cruz = c(200, 80, 90, 55, 40), 
  Portland = c(290, 50, 80, 55, 40))



fish_function<- function(Location){
  most_frequent = names(which.max(summary(fish_catch)))
  
    mutate_each(funs(.*Price), 3:6)
  
  #fish_cols = c(Santa_Barbara, Long_Beach, Santa_Cruz, Portland)
  #revenue_location = lapply(.SD function(x) x*fish[['Price']], )

} 
