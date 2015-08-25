require 'pry'
require 'pry-byebug'

class Robot

  attr_accessor :name, :type, :origin #creates getter && setter methods for each attribute

  def initialize(name,type,origin) #this method creates new instances of the robot class
    @name = name
    @type = type
    @origin = origin
  end

  def self.make_robots(number) #this is a class method
    #create a new robot
    robots = number.to_i
    #robots.times do
      #robot = Robot.new("Tim", "Super-Android", "New York")
      #puts "#{robot.name} has been created"
    #end
    robots.times do #|robot|
      Robot.random_robot_maker
    end
  end

  def self.random_robot_maker
    names = ["Tom","Katy","Ben","Melanie","Josh"]
    type = ["Android","Super-Android"]
    origins = ["New York", "Toronto", "San Francisco","Tokyo","Atlanta"]

    name = names.sample
    origin = origins.sample
    type = type.sample

    robot = Robot.new(name,type,origin)
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."
    puts "#{robot.flying_skills}"
    puts "#{robot.laser_fighting_skills}"
    puts "#{robot.empathy}"
  end
#this is an instance method
#self refers to the instance of Robot that called this method
  def flying_skills #methods (instance method) available for instances of Robot
    if type == "Super-Android"
     "I can fly!"
    else
      "I can't fly {crying}"
    end
  end

  def laser_fighting_skills #<- so these methods apply only to Robot? we can't use these with local variables?
    if type == "Android" && origin == "San Francisco"
    "I have laser fighting skills."
    else
      "No laser for me."
    end
  end

  def empathy
    if name == "Katy" || name == "Josh"
      "I'm friendly"
    else
      "I'm mean"
    end
  end

end

#call class method
Robot.make_robots(10)

#apply instance method?
#nana = Robot.new("Nana", "Super-Android", "New Orleans") #local variable, state - it exists
#puts nana.flying_skills

#Robot Factory
#1 - Flying skills
#2 - Laser fighting skills
#create a class
#set attributes - read & write capabilities
#build a constructor
#create our instance of a class
