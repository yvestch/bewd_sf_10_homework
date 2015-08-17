require 'pry'

#Create 3 or more hashes with cars - include 5 keys: brand, model, year, price, is_electric
tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
ford = {brand: "Ford", model: "Escape", year: 2015, price: 17000, is_electric: false }
porshe = {brand: "Porshe", model: "Speedter", year: 1955, price: 250000, is_electric: false }
deloraen = {brand: "AMC", model: "Delorean", year: 1980, price: 50000, is_electric: false }
toyota = {brand: "Toyota", model: "Prius", year: 2016, price: 49000, is_electric: true }

#Iterate through the array using the `.each` method
def show_all_cars(cars)
  cars.each do |car|
    puts "This is a #{car[:brand]}. The Model is #{car[:model]}"
    puts "This car is environmentally friendly!" if car[:is_electric] == true
  end
end

#Write a method that accepts an unlimited number of cars (or arguments).
#I am not too clear on this one and unsure if the method below is headed in
#the correct direction. Feedback?
def add_cars(*all_cars)
  #binding.pry
  #all_cars.each do |car|
    #puts add_cars
    all_cars
  #end
end

#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
# Is it not good practice to use else with unless?
#Had trouble putting together this method using if and unless together.
def env_friendly_car(env_car)
  #env_car = "#{car}"
   if is_electric == true
     puts "This is great for environment"
end
    unless "#{car} is a Porshe}"
end

#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars
#and transforms them into an array


#Methods to call

#APPROACH - A
#cars.push(tesla, ford, porshe, deloraen, toyota)
cars = []
cars.push(tesla, ford, porshe, deloraen, toyota)
show_all_cars(cars)

#APPROACH - B
#cars = add_cars(tesla, ford, porshe, deloraen, toyota)
#show_all_cars(cars)
