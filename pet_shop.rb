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
