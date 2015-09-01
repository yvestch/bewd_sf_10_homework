=begin
*** Question
- how do you differentiate units from apartments?

array of apartments
Building should have address, apartments, name,
=end

require 'pry'
require 'pry-byebug'

class Building

attr_accessor :name, :address, :apartments
# creates the getter and setter attributes
def initialize(name,address)
@name=name
@address=address
@apartments=[]
#Name and address are required, but apartments would be an array of apartments

end
=begin
  def building_attributes
    names= ["Bond","VIP","Cool Building"]
    addresses= ["225 bush st. , san Francisco CA 94104", "12 pasadena st. San francisco CA 94134", "1 market st. SF 94112"]
    apartments= [1,2,3,4,5]
  end
=end

  def to_s
    "#{name} at #{address} has #{apartments.count} apartments"
  end
  def list_units

    self.apartments.each do |apartment|
    puts "This Building has #{apartments.count} apartments, #{apartment.bedrooms} bedrooms & #{apartment.bathrooms} bathrooms."
    end
  end

end

  building= Building.new("The bond building","Oakland")
