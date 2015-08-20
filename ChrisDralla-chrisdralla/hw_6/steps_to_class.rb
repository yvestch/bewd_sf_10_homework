require 'pry'
#define a class
class Person

  #define the Class attributes
  #attr_accessor creates getter and setter methods for Class attributes
  attr_accessor  :age, :height, :weight
  attr_reader :hometown

  #create instance of Class with attributes
  def initialize (age, height, weight)
    @age = age
    @height = height
    @weight = weight
    #hometown will not be able to change because only attr_reader is used
    @hometown = "Los Altos"
  end

  #intance method: defines behavior that only an instance of a class has access to
  def scream
    "AHHHH!!!!!"
  end

  def get_older
    @age += 1
  end

  def grow_taller
    @height += 2
  end

  def gain_weight
    @weight += 10
  end

  def lose_weight
    @weight -= 10
  end

  #Class method: method that provides that provides a behavior for the overall Class; can be accessed or called outside of the Class
  #Class method usually begins with self.<name>
  #Class method is usually used when you need to have access to a behavior that does not involve one instance of the Class

end

chris = Person.new(30, 72, 180)
binding.pry
