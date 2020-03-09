#' Fish Function
#' 
#' 


########## Set up function##############3
#types of fish
fish_array<- c("Halibut", "Red Snapper", "Tuna", "Big Guy", "Little Blue")

#fish price
fish_price<- c(100, 70, 90, 150, 90)

#fish price by the type of fish
fish_price<- matrix(c(fish_price), nrow = 5, ncol = 1, byrow = T, dimnames = list(c(fish_array), c("fish_price")))

#create a sample of fish catches
fish_catch<- sample(5:120, 100, replace = FALSE)

#locations of fisheries
fish_locations<-  c("Santa_Barbara", "Long_Beach", "Santa_Cruz", "Portland")

#final matrix that has the number of fish catch and price by the fish array
fish_catch_location<- matrix(c(fish_catch), nrow = 5, ncol = 4, dimnames = list(c(fish_array), c(fish_locations)))

fish_catch_location

############Function##################

fish_function<- function(fish_catch, fish_price){
  
  #find the most frequent fish per location
  most_frequent = list(colnames(fish_catch_location), rownames(fish_catch_location)[apply(fish_catch_location, 2, which.max)])
  
  #total revenue
  total_revenue = sum(fish_price[,1]*fish_catch)
  
  #revenue by location
  location_revenue = fish_price[,1]*fish_catch_location
  location_revenue = colSums(location_revenue)
  location_revenue_df = as.data.frame(location_revenue)
  
  
  
  return(list(most_frequent_location = most_frequent[[1]], 
              most_frequent_fish = most_frequent[[2]],
              revenue_location = location_revenue_df, 
              total_revenue = total_revenue))
  
  }
  
  
  
  













