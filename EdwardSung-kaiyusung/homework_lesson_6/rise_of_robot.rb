# Create a class.
# Set_attributes and read/write capabilities
# 3 Whys ready for Wednesday.
# Build a constructor.
# Instantiate.
# First need attributes.
require 'pry'
require 'pry-byebug'


class Robot   #ruby convention, classes are never plural. And the new in yellow should always be capitalize.
  #create getter and setter methods for each attributes.
  # def name @name end and def
  attr_accessor :name, :type, :origin #add-er writing methogs.

  #this method creates new instances of the robot class.

  #instance variables are available throughout the class.
  #@name is an instance variable.

# need to create and instance methods.

#@ means instance variables
  def initialize(name, type, origin) #this is the constructor
      @name = name
      @type = type
      @origin = origin
  end

  def self.random_robot_maker
    names = ["Fukuyama Masaharu", "Taylor Swfit", "Utada Hikaru", "T.J. Miller", "Chris Rock"]
    types = ["Android", "Terminator"]
    origins = ["Singapore", "Tokyo", "San Francisco", "Taipei", "Kyoto"]
    name = names.shuffle[1]
    type = types.shuffle[1]
    origin = origins.shuffle[1]
    return Robot.new(name, type, origin)
  end

  #all class methods have self.
  def self.make_robots(number_of_robots)
    #create a new robot.

    puts "We need to make #{number_of_robots}"
    number_of_robots.to_i.times do |i|
      robot = Robot.random_robot_maker
      puts "#{robot.name} has been created, from #{robot.origin}, and type #{robot.type}. \n"
      puts ""
      #puts "#{robot.laser_fighting_skills}"
      #puts "#{robot.empathy}"
      #puts "#{robot.flying_skills}"
      puts "** #{robot.flying_skills}. #{robot.empathy}. #{robot.laser_fighting_skills}.**"
    end
  end

  def empathy
    if type == "Terminator"
      puts "I am the #{self.type}. I have no empathy."
    else
      puts "I am an #{self.type}. I have emapthy."
    end
    # "I was designed to be empathy" if origin == "Nairobi"
  end

  #these are instance methods:
  #self refers to an instance of robot that called this method.
  def flying_skills
    if type == "Android"
      puts "I am #{self.name}. I can fly!"
    else
      puts "I am #{self.name}, I cannot fly."
    end
  end

  #within an instance method, an instance knows what it is.
  def laser_fighting_skills
    if type == "Terminator"
      puts "I am #{self.name}. I have laser fighting skills!"
    else
      puts "I do not have laser fight skills! :("
    end
  end

 #name, model, origin
 #1. need to create a constructor, this exsits in every language.
 # a method that creates and instance of the class.
end

#instance variable can live anywhere in the class, but local variables is only in the function.
Robot.make_robots(10)
