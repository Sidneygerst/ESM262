rad_brennie<- function(stoke, hype, dogs_pet = 5, pizza = 2){
  
  if(hype <= 0) return("Please be more hype")
  
  else if(stoke <= 0) return("Come on increase the stoke!")

  rad = (stoke + hype + dogs_pet)^pizza
  
  return(rad)
}