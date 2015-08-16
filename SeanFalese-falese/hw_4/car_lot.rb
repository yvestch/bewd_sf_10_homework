#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, is_electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(hashes)
  hashes.each do |hash|
    hash
    puts "The model is #{hash[:model]} and the drive train is #{hash[:drivetrain]}"
      puts "its electric boogie woogie woogie" unless hash[:is_electric] == false
    end



end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)
  hashes



end
h1 = {model: "s", drivetrain:"AWD", seats: "4", body_style:"sedan" ,is_electric: true}
h2 = {model: "prius", drivetrain:"FWD", seats: "4", body_style: "econobox", is_electric: true}
h3 = {model: "jeep", drivetrain:"4WD", seats: "5", body_stlye: "SUV", is_electric: false}
h4 = {model: "corolla", drivetrain: "FWD", seats: "4", body_style:"econobox", is_electric: false}
# hashes = []
# hashes.push(h1,h2,h3,h4)


hashes = add_cars(h1, h2, h3)
show_all_cars(hashes)
