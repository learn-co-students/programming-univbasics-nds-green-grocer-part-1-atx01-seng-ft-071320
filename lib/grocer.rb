def find_item_by_name_in_collection(name, collection)
  
  counter = 0

  while counter < collection.length do 
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1
  end

  
end

def consolidate_cart(cart)

  new_cart = cart
  item_names = []
  counter = 0

  while counter < new_cart.length do 
    item_names.push(new_cart[counter][:item])
    counter += 1
  end

  final_cart = new_cart.uniq

  final_cart.each do |item|
    item[:count] = item_names.count(item[:item])
  end

final_cart

end


  