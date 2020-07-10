def find_item_by_name_in_collection(item, collection)
  collection.each do |element|
    if element[:item] == item 
     return element
    end
  end
  nil
end


def consolidate_cart(cart)
  
  new_cart = []
  
  cart.each do |element|
    cart[cart.index(element)][:count] = 1
  end
  
  cart.each do |element|
    if new_cart.include? element
      new_cart[new_cart.index(element)][:count] += 1 
    else
      new_cart << element
    end
  end
  
  cart = new_cart
  
end