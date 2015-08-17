#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

#above is approach A

#approach B says create array

def show_all_cars(cars)
  cars.each do |car|
    puts "This is a #{car[:brand]}. The Model is #{car[:model]}."
    if car[:price] > 75000
      puts "Wow, the #{car[:model]} is not cheap!"
    end
    unless car[:is_electric] != true
      puts "#{car[:brand]} is good for the earth."
      #alternatively puts "blah, blah, blah" if condition == true
      #alternatively puts "blah, blah, blah" condition unless == false
      #alternatively if condition == true puts "blah, blah, blah" (no end!)
    end
  end
end


tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
prius = {brand: "Toyota", model: "Prius", year: 2015, price: 35000, is_electric: true}
clk = {brand: "Mercedes", model: "CLK", year: 1999, price: 55000, is_electric: false}
ford = {brand: "Ford", model: "F150", year: 2015, price: 60000, is_electric: false}

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)     #says accepts all objects and put it in the array
  all_cars
end

cars = [tesla, prius, clk, ford]

cars = add_cars(tesla, prius, clk)
#this method pulls all the objects, without knowing the names to create the list
show_all_cars(cars)
