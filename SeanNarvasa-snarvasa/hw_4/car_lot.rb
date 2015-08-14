#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|                                                      #for each item within the cars array, do this thing
  puts "The brand is #{car[:brand]}. The model is #{car[:model]}."        #print the brand and the model for each car
    if car[:is_electric] == true
      puts "Um, this is 'mericuh and we only drive gas guzzlers."         #prints this thing if is-electric is true
    end
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)                                                    #the *all_cars argument accepts an unlimited # of arguments
    all_cars
end


###### Define my hashes
tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
mini = {brand: "Mini", model: "Cooper", year: 2015, price: 35000, is_electric: false}
toyota = {brand: "Toyota", model: "Prius", year: 2014, price: 3000, is_electric: true}
chevy = {brand: "Chevy", model: "Volt", year: 2015, price: 26000, is_electric: true}
ford = {brand: "Ford", model: "Mustange", year: 1967, price: 45000, is_electric: false}
nissan = {brand: "Nissan", model: "Leaf", year: 2015, price: 35000, is_electric: true}


cars = []                                                       #creates an empty array
cars.push(tesla, mini, toyota, chevy, ford)                     #pushes all hashes into the array
show_all_cars(cars)

#approach two
#cars = add_cars(tesla, mini, toyota, chevy, ford, nissan)
#show_all_cars(cars)
