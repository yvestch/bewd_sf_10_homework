#ROBOT CLASS
#create a class
#set attributes & read/write capabilities
#build a constructor- #name, model, origin
#create an instance of class


require 'pry'
require 'pry-byebug'

class Robot

#creates getter and setter method for each attribute
attr_accessor :name, :model, :origin


#constructor -this initialize method creates new instances of the Robot class
#includes the instance variables required and initializes them
def initialize(name, model, origin)
  @name = name
  @model = model
  @origin = origin
end
#@instance-variable are available throughout the class
#@name is an an instance variable



#this is a class method(note the self)
#create a new robot - use .times method - part of Integer class
def self.make_robots(number_of_robots)
  puts "We need to make #{number_of_robots} robots"
    (number_of_robots).times do
      Robot.random_robot_maker
    # robot = Robot.new("Max", "X500", "San Francisco")
    # puts "#{robot.name}, model number #{robot.model} has been created"
  end
end

####### alternate version from Kisha ####################
# def self.make_robots(number)                          #
#   robots = number.to_i                                #
#   robots.times do                                     #
#     robot= Robot.new("Max", "X500", "San Francisco")  #
#     puts "#{robot.name} has been created"             #
#   end                                                 #
# end                                                   #
#########################################################

def self.random_robot_maker
names = ["Celeste", "Max", "Ruby", "Ella", "Prince"]
type = ["Android", "Super-Android"]
origin = ["Honolulu", "London", "San Francisco", "Dubai", "Barcelona"]

n = names.sample
t = type.sample
o = origin.sample

robot = Robot.new(n,t,o)
puts "Hello, I am #{robot.name}, robot model: #{robot.model}, with an origin of: #{robot.origin} \n"
puts "#{robot.flying_skills}. #{robot.laser_fighting_skills}. #{robot.empathy}."
puts
end

#self stands for instance, for example: 
#<Robot:0x007fd1fb268bb0
#@model="Super-Android",
#@name="Nana",
#@origin="New Orleans">


#this is an instance method
def flying_skills
  if model == "Super-Android"
    "I can fly!"
  else
    "Awww, I can't fly {crying}"
  end
end


def laser_fighting_skills
  if origin == "Honolulu" || origin == "Dubai"
  "I am the deluxe model, I have laser fighting skills"
  else
  "I have not be preloaded with fighting skills, that will be a pricey upgrade"
  end
end


def empathy
  if name.length <= 4
    "And, I have considerable empathy. Tell me what's wrong..."
  else
    "Please don't come to me with your problems, my empathy is not functional"
  end
end


end

Robot.make_robots(10)


# nana = Robot.new("Nana", "Super-Android", "New Orleans")
# puts nana.flying_skills


