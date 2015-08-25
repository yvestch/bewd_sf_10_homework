#Create a class
#Set attributes - Read/Write capabilities
#Build a constructor
#Create an instant of a class
require 'pry'
require 'pry-byebug'

class Robot
  #name, model, origin

  attr_accessor :name, :type, :origin
  #Writes 'getter' and 'setter' methods for each attribute that is specified.

  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin
  end
  #this method creates new instances of the robot class.
  #Instance variables are avilable through out the class. @name is an instance variable.


def self.make_robots(number_of_robots)
  #create a new  robot
  puts "We need #{number_of_robots} robots"
  number_of_robots.to_i.times do
    Robot.random_robot_maker
  end
end

def self.random_robot_maker
  names = [ "Emily", "Tony", "Amanda", "John", "Nick"]
  type = [ "Android", "Super-Android"]
  origin = [ "Sicily", "Rochester", "Denver", "Toronto", "Albany"]

  name = names.sample
  origin = origin.sample
  type = type.sample

  robot = Robot.new(name, type, origin)
  puts "Hello, I am #{name} of type #{type}. I am from #{origin}."
  puts "#{robot.flying_skills}"
  puts "#{robot.laser_fighting_skills}"
  puts "#{robot.empathy}"
end



  def flying_skills
    if type == "Super-Android"
      "I can fly!"
    else
      "I can't even fly."
    end
  end

  def laser_fighting_skills
    if name == "Emily"
      "I have laser fighting skills."
    else
      "I am a pacifist."
    end
  end

  def empathy
    if origin == "Toronto"
      "I'm very empathetic."
    else
      "I have no empathy, I am a robot."
    end
  end

end

#nana = Robot.new("Nana", "Super-Android", "New Orleans")
#puts nana.flying_skills
Robot.make_robots(10)
