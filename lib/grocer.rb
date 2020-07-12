require "pry"

def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length do 
    req_hash = collection[counter]
    if name == req_hash[:item]
      return req_hash
    end 
    counter +=1 
  end 
  #binding.pry
end

def consolidate_cart(cart)
  nu_cart = []
  cart.each do |food_hash|
    food =  find_item_by_name_in_collection(food_hash[:item], nu_cart)
    if food 
    nu_cart.each do |nu_cart_hash|
      if nu_cart_hash[:item] === food[:item]
        nu_cart_hash[:count] +=1 
      end 
    end 
    else
      food_hash[:count] = 1 
      nu_cart.push(food_hash)
    end
  end 
  nu_cart 
  #binding.pry 
end 


  