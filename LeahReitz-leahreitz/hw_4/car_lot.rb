#Create 3 or more hashes with cars - include 5 keys
<<<<<<< HEAD
  #- brand, model, year, price, electric
=======
  #- brand, model, year, price, is_electric
>>>>>>> c81e4dbff69ea6ccec2c9a0c93cea338e4f846f6
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
<<<<<<< HEAD
  cars.each do |car| #just memorize this...
    puts "This is a #{car[:brand]}. The model is #{car[:model]}, made in #{car[:year]}."
    puts "****** This car is great for the earth!" unless car[:is_electric] == false
    end
=======
  cars.each do |car|
    puts "This is a #{car[:brand]}. The Model is #{car[:model]}"
    puts "***** This car is great for earth ****" if car[:is_electric] == true
  end
>>>>>>> c81e4dbff69ea6ccec2c9a0c93cea338e4f846f6
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)
<<<<<<< HEAD
  binding.pry
  all_cars
end


tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
subaru = {brand: "Subaru", model: "Forrester", year: 2013, price: 20000, is_electric: false}
toyota = {brand: "Toyota", model: "Prius", year: 2012, price: 49000, is_electric: true}
fiat = {brand: "Fiat", model: "Mini", year: 2014, price: 40000, is_electric: true}

# Approach 1:
# cars = [] #could be cars = array.new
# cars.push(tesla, subaru, toyota, fiat)
# show_all_cars(cars)

#Approach 2:
cars = add_cars(tesla, subaru, toyota, fiat)
=======
  all_cars
end

tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
ford = {brand: "Ford", model: "Escape", year: 2015, price: 17000, is_electric: false }
porshe = {brand: "Porshe", model: "Speedter", year: 1955, price: 250000, is_electric: false }
deloraen = {brand: "AMC", model: "Delorean", year: 1980, price: 50000, is_electric: false }
toyota = {brand: "Toyota", model: "Prius", year: 2016, price: 49000, is_electric: true }

#APPROACH - A
# cars = []
# cars.push(tesla, ford, porshe, deloraen, toyota)
# show_all_cars(cars)

#APPROACH - B
cars = add_cars(tesla, ford, porshe, deloraen, toyota)
>>>>>>> c81e4dbff69ea6ccec2c9a0c93cea338e4f846f6
show_all_cars(cars)
