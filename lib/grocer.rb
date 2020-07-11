def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    if item[:item] == name 
      return item 
    end 
  end
  return nil 
end

def consolidate_cart(cart)
  final_cart = []
  cart.each do|hash|
    if !!find_item_by_name_in_collection(hash[:item], final_cart)
      final_cart.each do |item|
        if hash[:item] == item[:item]
          item[:count]+=1 
        end 
      end 
    else 
      final_cart.push(hash)
      final_cart[-1][:count] = 1
    end 
  end 
  final_cart
end


  