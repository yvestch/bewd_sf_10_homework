#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|
    puts "This is a #{car[:brand]}. The model is #{car[:model]}."
    puts "***This car is great for earth ***" unless
    car[:is_electric] == false
  end
end
#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)
  binding.pry
  all_cars
end

tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
bmw = {brand: "BMW", model: "M5", year: 2011, price: 45000, is_electric: false}
jeep = {brand: "Jeep", model: "Wrangler", year: 2011, price: 25000, is_electric: false}
toyota = {brand: "Toyota", model: "Prius", year: 2008, price: 12000, is_electric: true}
ford = {brand: "Ford", model: "Mustang", year: 1967, price: 2000, is_electric: false}

#Approach A
#cars = []
#cars.push(tesla, bmw, jeep, toyota, ford)
#show_all_cars(cars)

#Approach B
add_cars(tesla, bmw, jeep, toyota, ford)
show_all_cars(cars)
