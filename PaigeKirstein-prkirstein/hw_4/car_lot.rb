#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  number = 0
  cars.each do |car| #does everything one time
    number = number + 1
    puts "Car number #{number}"
    puts "The brand is #{car[:brand]}"
    puts "The model is #{car[:model]}"
    puts "The car is electric" if car[:is_electric] == true
    puts "The car is expensive" unless car[:price] < 50000
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars) #the * at the beginning means it accepts unlimited arguments
  binding.pry
  all_cars
end

#create the hashes
tesla = {brand: "Tesla", model: "Model X", year: "2016", price: 85000, is_electric: true}
camry = {brand: "Toyota", model: "Limted", year: "1990", price: 25000, is_electric: false}
rx = {brand: "Lexus", model: "300", year: "2010", price: 65000, is_electric: true}

#create the array of hashes
#approach ONE
#cars = []
#cars.push(tesla, camry, rx)

#show_all_cars(cars)

#Approach two
cars = add_cars(tesla,camry,rx)
show_all_cars(cars)
