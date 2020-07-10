def find_item_by_name_in_collection(name, collection)
  collection.each do |item| 
    if item[:item]==name
      return item
    end
  end 
  return nil

end

def consolidate_cart(cart)
  consolidated=[]
  cart.each do |item|
    hash= consolidated.find { |i| i[:item]==item[:item]}
    if hash== nil 
      consolidated.push(item)
      consolidated[-1][:count]=1
    else 
      consolidated.each do |j| 
        if j[:item]==hash[:item]
          j[:count]+=1
        end 
      end 
    end 
  end 
consolidated 
      
    

end


  