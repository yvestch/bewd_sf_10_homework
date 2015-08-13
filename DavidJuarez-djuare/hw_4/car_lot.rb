#Create 3 or more hashes with cars - include 5 keys 
#- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'
require 'pry-byebug'

def show_all_cars(cars)

  cars.each do |car|
      puts "This is a #{car[:brand]}"
      puts "This is a #{car[:model]}"



      puts "** #{car[:brand]} CAR IS GOOD **\n" unless car[:electric] == false
      if car[:is_electric] == true
         puts"#{car[:brand]} is a great car to save gas and help with pollution\n"
      end


      if car[:is_electric] == true && car[:brand] == "tesla"
         puts"#{car[:brand]} REDUCES POLLUTION AND IT'S TESLA \n"
      end

      if car[:is_electric] == true || car[:brand] == "toyota"
         puts"#{car[:brand]} REDUCES POLLUTION AND IT IS A TOYOTA CAR \n"
      end

  end

end

#write a method that accepts an unlimited number of cars (or arguments)

def add_cars(array, *all_cars)
    all_cars.each do |car|
    array.push(car)

    end
    puts "#{array}"

end


tesla = {brand: "tesla", model: "Model X", year: 2016, price: 80000, is_electric: true}
porsche = {brand: "porsche", model: "Cayman ", year: 2015 , price: 80000 , is_electric: false}
toyota = {brand: "toyota", model: "prius", year: 2012 , price: 39000 , is_electric: true }
bmw = {brand: "bmw", model: "bmw 3 Series 328i ", year: 2015 , price: 51575 , is_electric: false }
audi = {brand: "audi", model: "A8 Sedan ", year: 2015 , price: 77400 , is_electric: false }

# Function calls


cars = []
add_cars(cars, tesla, porsche, toyota, bmw, audi)
#cars.push(tesla, porsche, toyota, bmw, audi)
show_all_cars(cars)







