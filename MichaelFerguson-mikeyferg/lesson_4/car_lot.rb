#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, is_electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
ford = {brand: "Ford", model: "Escape", year: 2015, price: 17000, is_electric: false }
porshe = {brand: "Porshe", model: "Speedter", year: 1955, price: 250000, is_electric: false }
deloraen = {brand: "AMC", model: "Delorean", year: 1980, price: 50000, is_electric: false }
toyota = {brand: "Toyota", model: "Prius", year: 2016, price: 49000, is_electric: true }

#@car_array = []
def array_from_hash_creator(array)
  car_array = []
  array.each do |car|
    car_array.push(car)
  end
  car_array
end

car_array = array_from_hash_creator([tesla, ford, porshe, deloraen, toyota])

def is_env_friendly(car_array)
  car_array.each do |car|
    if car[:is_electric] == true
      puts "#{car[:year]} #{car[:brand]} #{car[:model]} is environmentally friendly"
    else
      puts "#{car[:year]} #{car[:brand]} #{car[:model]} is an environment killer!"
    end
  end
end

is_env_friendly(car_array)
