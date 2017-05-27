def pet_shop_name(pet_shop)
  return pet_shop[:name] 
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money)
  return pet_shop[:admin][:total_cash] +=  money
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold_pets)
  return pet_shop[:admin][:pets_sold] += sold_pets
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, pet_breed)
  return pet_shop[:pets].select {|pet| pet[:breed] == pet_breed} 
end

def find_pet_by_name(pet_shop, pet_name)
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
     return pets
    end
  end
 return nil
end


def remove_pet_by_name(pet_shop, pet_name)
  # for pets in pet_shop[:pets]
  #   if pets[:name] == pet_name
  #     pets.delete(pet_name)
  #     #return pets
  #   end
  # end
  pet_shop[:pets].delete_if { |h| h[:name] == pet_name }
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop[:pets].count
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end




