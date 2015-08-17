#Create 3 or more hashes with cars - include 5 keys

  #- brand, model, year, price, electric

  #- brand, model, year, price, is_electric

#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|

    puts "This is a #{car[:brand]}. The price is #{car[:price]}. The model is #{car[:model]}."
    puts "#{car[:brand].upcase} rocks!" if car[:is_electric] == true


    #or could do "***** This car is great for earth" unless car[:is_electric] ==false
    puts "This car is great for earth!" if car[:is_electric] == true

  end
end
     #could check car[:brand}]
 #what really sets a hash apart from an array--have an array or collection of hashes and each one has a lot of info


#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)
  all_cars
end



lexus = {brand: "lexus", model: "suv", year: 2004, price: 20000, is_electric: false}
hyundai = {brand: "hyundai", model: "elantra", year: 2014, price: 25000, is_electric:false}
prius = {brand: "prius", model: "suv", year: 2007, price: 17000, is_electric: true}

cars = []
cars= add_cars(lexus, hyundai, prius)
show_all_cars(cars)


##Approach A
# cars = []
#cars.push(lexus, hyundai, prius)--are not strings, are variables
#show_all_cars(cars)

##Approach B

#APPROACH - A
# cars = []
# cars.push(tesla, ford, porshe, deloraen, toyota)
# show_all_cars(cars)

#APPROACH - B
