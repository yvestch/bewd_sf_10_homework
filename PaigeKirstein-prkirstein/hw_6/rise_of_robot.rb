#Since I had the robot answers already, I was having trouble getting myself to actually
#think of anything original, so I decided to build something new instead!
#made a few edits here, but see security_system for more class method practice

require 'pry'

class Robot
  #creates getter && setter methods for each attribute
  attr_accessor :name, :type, :origin
  def initialize(name,type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  #class methods can be called outside of the class like Robot.make_robots(number)
  def self.make_robots(number)
    robots = number.to_i
    robots.times do
      Robot.random_robot_maker
    end
  end

  def self.random_robot_maker
    names = ["Rachel", "Sarah", "Beyonce", "Elizabeth", "Lupita"]
    origins = ["Jo'burg", "Brooklyn", "Oakland", "London", "San Francisco"]
    types = ["Awesom", 'Super-Android']

    name = names.sample
    origin = origins.sample
    type = types.sample

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}.\n"
    puts "**#{robot.flying_skills}. #{robot.excitement}. #{robot.laser_fighting_skills}.**"
    puts "-----\n"
  end

  #instance methods can only be called by instances of a class
  def excitement
    "I was designed to be exciting!" if origin == "Oakland"
  end

  #this is an instance method
  def flying_skills
    if type == "Super-Android"
      "I can fly!"
    else
      "I can not fly {crying}"
    end
  end

  def laser_fighting_skills
    "I have laser fighting skills" unless type != "Android"
  end
end

Robot.make_robots(50)

#notes from TA time!
#tanya_bot = Robot.new("Tanya", "Android", "Oakland")
#{}"Here are Tanya's skills #{tanya_bot.laser_fighting_skills}"


#NOOOOOOOO tanya_bot.make_robots(4)
#Robot.flying_skills
