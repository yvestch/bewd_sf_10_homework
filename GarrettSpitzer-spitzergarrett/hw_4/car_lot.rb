#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|
    puts "This is a #{car[:brand]}.  The model is #{car[:model]}"
    puts "*** This car is great for earth" if car[:is_electric] == true
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)
  binding.pry
  all_cars
end

tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
ford = {brand: "Ford", model: "Focus", year: 2016, price: 25000, is_electric: false}
dodge = {brand: "Dodge", model: "Durango", year: 2012, price: 35000, is_electric: false}
chrysler = {brand: "Chrysler", model: "Jeep", year: 2014, price: 15000, is_electric: false}
saab = {brand: "Saab", model: "Standard", year: 2011, price: 5000, is_electric: false}

#Approach - A
#cars = []
#cars.push(tesla, ford, dodge, chrysler, saab)
#show_all_cars(cars)

#Approach - B
cars = add_cars(tesla, ford, dodge, chrysler, saab)
show_all_cars(cars)
