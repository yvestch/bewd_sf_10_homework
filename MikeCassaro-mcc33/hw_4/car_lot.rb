#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, is_electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|
    # '.each' method iterates through the cars array and prints the values associated with the brand and model key
    puts "This is a #{car[:brand]}. The Model is #{car[:model]}"
    puts "***** This car is great for earth ****" if car[:is_electric] == true
  end
end



tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
ford = {brand: "Ford", model: "Escape", year: 2015, price: 17000, is_electric: false }
porshe = {brand: "Porshe", model: "Speedter", year: 1955, price: 250000, is_electric: false }
deloraen = {brand: "AMC", model: "Delorean", year: 1980, price: 50000, is_electric: false }
toyota = {brand: "Toyota", model: "Prius", year: 2016, price: 49000, is_electric: true }
# 5 hashes created with 5 keys & values.

cars = []
# An emtpy array
cars.push(tesla, ford, porshe, deloraen, toyota)
# 5 hashes listed above are added to the empty array
show_all_cars(cars)
#The show all cars method is called and passed the cars array
