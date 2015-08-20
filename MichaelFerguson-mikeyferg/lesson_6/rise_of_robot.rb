
require 'pry'
require 'pry-byebug'
#create a class
#set attributes read and write capabilities
#build a constructor
#instantiate

class Robot
  #name, model, origin


  #creates getter and setter methods for each attribute
  attr_accessor :name, :type, :origin
  #this method creates new instances of the robot class
#instance variables are availabel throughout the class
  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  def self.make_robots(number_of_robots)
    #puts "I make #{number_of_robots} robots."
    robots = number_of_robots.to_i
    robots.times do
      Robot.random_robot_maker
      puts "New Robot #{self.name}"
    end
  end

  def self.random_robot_maker
    names = ["mike", "joe", "alex", "john", "frank"]
    types = ["android", "superAndroid"]
    origins = ["San Francisco", "Chicago", "Toronto", "Napa", "Paris"]

    name = names.sample
    type = types.sample
    origin = origins.sample

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} and I was produced in #{origin}."
    puts "#{robot.flying_skills}"
    puts "#{robot.laser_fighting_skills}"
  end
  #this is an instance method
  #self refers to the instance of robot that called this method
  def flying_skills
    if type == "superAndroid"
      "I can fly"
    else
      "I cannot fly!"
    end
  end

  def laser_fighting_skills
    if origin == "San Francisco"
      "I is cool."
    else
      "I is not cool."
    end
  end

end

#nana = Robot.new("nana", "superAndroid", "New Orleans")


Robot.make_robots(10)
