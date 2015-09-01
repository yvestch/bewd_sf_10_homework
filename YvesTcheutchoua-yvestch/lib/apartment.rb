# thinking as a real estate developer, the ren and renter are unknown, so they are not required
require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :sqft, :bedrooms, :bathrooms, :rent, :renter, :name
  def initialize(name,sqft,bedrooms,bathrooms)
    @name= name
    @sqft= sqft
    @bedrooms= bedrooms
    @bathrooms=bathrooms
    @rent= nil
    @renter = nil
# @rent and @renter are not required, that's why they are not in the parentheses

  end

  def to_s
    # this method is inherited out of the box when you create a new class. I can overrite it and define myself like this
  "Apartment #{name} has #{sqft} square feet"
  end

  def not_occupied?
    renter.nil?
  end


end

apartment= Apartment.new("Penthouse -101", 1000,4,4)
puts apartment.not_occupied?
# when we create a new instance of a class
