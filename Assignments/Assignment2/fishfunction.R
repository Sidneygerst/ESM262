#' Fish Function
#' 
#' This function determines the fisheries revenue by location. 
#' Make sure to have a matrix of combined fish catches per location
#' @param fish_catch sample of total fish caught
#' @param fish_price sample of all prices of all fish
#' @return most_frequent_location, most_frequent_fish, revenue_location, total_revenue, plot



fishfunction<- function(fish_catch, fish_price, plot = F){
  
  #find the most frequent fish per location
  most_frequent = list(colnames(fish_catch_location), rownames(fish_catch_location)[apply(fish_catch_location, 2, which.max)])
  
  #total revenue
  total_revenue = sum(fish_price[,1]*fish_catch)
  
  #revenue by location
  location_revenue = fish_price[,1]*fish_catch_location
  location_revenue = colSums(location_revenue)
  location_revenue_df = as.data.frame(location_revenue)
  location_revenue_df$location = fish_locations
  
  
  if(plot){
    fish_plot<- ggplot(location_revenue_df, aes(x = location, y = location_revenue, fill = location))+
      geom_bar(stat = "identity")+
      theme_bw()+
      scale_y_continuous(expand = expand_scale(mult = c(0,0.05))) +
      theme(legend.position = "none")+
      labs(title = "Fisheries Revenue",
           subtitle = sprintf("Total revenue is $%d", total_revenue),
           x = "Location",
           y = "Total Revenue ($)")
  }
  else fish_plot = NULL
  
  
  return(list(most_frequent_location = most_frequent[[1]], 
              most_frequent_fish = most_frequent[[2]],
              revenue_location = location_revenue_df, 
              total_revenue = total_revenue,
              plot = fish_plot))
  
  }
  












