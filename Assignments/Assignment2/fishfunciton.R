#' Fish Function
#' 
#' 


fish_array<- c("Halibut", "Red Snapper", "Tuna", "Big Guy", "Little Blue")

fish_price<- c(100, 70, 90, 150, 90)

fish_price<- matrix(c(fish_price), nrow = 5, ncol = 1, byrow = T, dimnames = list(c(fish_array), c("fish_price")))

fish_catch<- sample(5:120, 100, replace = FALSE)

fish_locations<-  c("Santa_Barbara", "Long_Beach", "Santa_Cruz", "Portland")

fish_catch_location<- matrix(c(fish_catch), nrow = 5, ncol = 4, dimnames = list(c(fish_array), c(fish_locations)))

# make a data set for fish
fish<- data.frame(
  row.names = c("Halibut", "Red Snapper", "Tuna", "Big Guy", "Little Blue"),
  Santa_Barbara = c(100, 30, 50, 20, 90), 
  Long_Beach = c(80, 10, 20, 90, 70),
  Santa_Cruz = c(90, 80, 200, 55, 40), 
  Portland = c(290, 50, 80, 55, 40),
  Price = c(100, 70, 90, 150, 90))

Price = c(100, 70, 90, 150, 90)

fish_function<- function(fish_catch, fish_price){
  most_frequent = list(colnames(fish_catch_location), rownames(fish_catch_location)[apply(fish_catch_location, 2, which.max)])
  
  fish %>% 
    apply(mutate(Santa_Barbara_rev = Santa_Barbara*Price))
  
  fish_unique <- fish %>% 
    rownames_to_column()
  
  colnames(fish_unique)<- c("Species", "Santa_Barbara", "Long_Beach", "Santa_Cruz", "Portland", "Price")
  
  
  #location_revenue = unique(colSums(fish_unique[,2:5])) 
  
  fish_revenue = fish_catch_location %>% 
    mutate_each(funs(.*Price), 2:5) 
  
  location_revenue<- colSums(fish_catch_location[2:5])
  
  total_revenue<- sum(location_revenue)
  
  return(most_frequent, location_revenue, total_revenue)
  
  }
  
  
  
  
  #fish_cols = c(Santa_Barbara, Long_Beach, Santa_Cruz, Portland)
  #revenue_location = lapply(.SD function(x) x*fish[['Price']], )

} 













