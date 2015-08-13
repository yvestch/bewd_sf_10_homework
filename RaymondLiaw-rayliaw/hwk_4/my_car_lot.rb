#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|
    puts "This is a #{car[:brand]} model #{car[:model]}"
    puts "* The #{car[:model]} is also good for the environment!" unless !car[:electric]
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*new_cars)
  new_cars
end

# INIT
tesla = { brand: "Tesla", model: "X", year: 2016, price: 85000, electric: true }
toyota = { brand: "Toyota", model: "Prius", year: 2015, price: 24000, electric: true }
subaru = { brand: "Subaru", model: "WRX", year: 2016, price: 34000, electric: false }
bmw = { brand: "BMW", model: "Z3", year: 2002, price: 12000, electric: false }

cars = add_cars(tesla, toyota, subaru, bmw)
show_all_cars(cars)
