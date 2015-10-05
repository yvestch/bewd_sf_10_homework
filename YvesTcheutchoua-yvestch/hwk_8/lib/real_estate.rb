require_relative 'building'
require_relative 'apartment'
require_relative 'renter'
require 'delegate'
require 'yaml'

=begin
loop through the array of apartments and print information about the instance of each apartmment
- every building should have for attributes: the name, address, ...
-each renter should have for attributes: name, credit, salary..
-if the aparmtent is empty
- create a building that has apartments
- if the person is in the apartment, print out the person name if not, mention that it's vacant
=end
require 'pry'
require 'pry-byebug'
  def create_building
    puts " -- New Building---"
    puts "What is the building name? \n"
    name =gets.strip
    puts "What is the building address?"
    address= gets.strip
    building = Building.new(address,name)
    add_unit_to_building(building)
  end

  def add_unit_to_building(building)
    puts "how many apartment units does this Building have ? \n"
    units= gets.strip.to_i
    units.times do
      building.apartments.push(create_apartment)
    end
    return building
  end

  # building.list_units



  def create_renter #this method creates a renter
    puts "** welcome to the #{Building.name} Building ** \n"
    puts "To complete the rental application process, we need the following information: \n"

    puts "What is the renter name? \n"
    name = gets.strip
    puts "what's the renter's credit score?"
    credit_score = gets.strip
    puts "what's the renter's annual salary?"
    salary = gets.strip
     return renter = Renter.new(name,credit_score,salary)
  end

  def add_renter_to_apartment(renter, building) #this method will push a renter into an array
  puts "What apartment number do you want to live in? \n"
  response = gets.strip.to_s

    building.apartments.each do |apartment|
      # loop through the building array which contains several apartments to check if the apartment name is identical
        if response == apartment.name && apartment.renter == nil
          apartment.renter = renter
          puts "The apartment number #{apartment.name} has been assigned to #{apartment.renter}, who is its first occupant. "

        elsif apartment.renter != nil
          puts "the apartment is already occupied by #{apartment.renter.name}"
          puts "Would you like to make another selection  ? (y/n) \n"
          response_2 = gets.strip.downcase
            if response_2 == "y" || response_2 == "yes"
                    add_renter_to_apartment(renter, building)
            end
        elsif response != apartment.name

            puts " This apartment number is not part of the Building #{building.name} \n"
            puts "please Make another selection \n"
            add_renter_to_apartment(renter, building)
        end
      end
    # return building
  end

=begin
  def apartment_checker(apartment,renter,building)
    if apartment.renter == nil
      puts "this apartment is vacant"
    else
      puts "the apartment is rented by #{apartment.renter.name}"
      puts "Would you like to make another selection  ? (y/n) \n"
      response = gets.strip.downcase
        if response == "y" || response == "yes"
          add_renter_to_apartment(renter, building)
        end
    end
  end
  def is_occupied(apartment_array,renter,building)
    #where you're going to loop through the building.apartment array and use the apartment_checker method(apartment)
    apartment_array.each do |apartment|
    apartment_checker(apartment,renter,building)
    end
  end
=end

  def create_apartment
    #(name,sqft,bedrooms,bathrooms)
    puts "--New Apartment--"
    puts "What's the aprtment number ?"
    name = gets.strip

    puts "what's the square footage ?"
    sqft = gets.strip

    puts "How many bedrooms?"
    bedrooms = gets.strip

    puts "How many bathrooms?"
    bathrooms = gets.strip
    apartment = Apartment.new(name, sqft, bedrooms, bathrooms)
  end



building = create_building
renter = create_renter
add_renter_to_apartment(renter, building)
apartment_array =  building.apartments
#is_occupied(building.apartments,renter,building)
#
# add_renter_to_list(renter)



=begin
  def add_unit_to_building
    puts "how many units? \n"
    units= get.strip.to_i
    units.times do
      building.apartments << create_apartment
    end
    bulding.list_units
  end
#my solution is below
    i=0
    array_of_apartments_in_building=[]
    while i<units
      apartment_of_the building = create_apartment.new
      array_of_apartments_in_building << array_of_apartments_in_building
    end
=end
  # def add_unit_to_building(building)
  #   puts "how many units? \n"
  #   units= gets.strip.to_i
  #   unit.times do
  #     building.apartments.push(create_apartment)
  #     end
  #   building.list_units
  # end
