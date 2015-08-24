require 'pry'
require 'pry-byebug'


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
    names = ["Tanya", "Tatyana", "Beyonce", "Rihanna", "Lupita"]
    origins = ["Nairobi", "Brooklyn", "Oakland", "Chicago", "San Francisco"]
    types = ["Android", 'Super-Android']

    name = names.sample
    origin = origins.sample
    type = types.sample

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}.\n"
    puts "**#{robot.flying_skills}. #{robot.empathy}. #{robot.laser_fighting_skills}.**"
    puts "-----\n"
  end

  #instance methods can only be called by instances of a class
  def empathy
    puts "Was designed to be empathetic" if origin == "Chicago"
  end

  #this is an instance method
  def flying_skills
    if type == "Android"
      puts "Flying capability"
    else
      puts "No flying capability"
    end
  end

  def laser_fighting_skills
    "Laser fighting capability" unless type != "Super-Android"
  end
end

Robot.make_robots(5)

travis_bot = Robot.new("travis", "Android", "Chicago")
leo_bot = Robot.new("leo", "Android", "Nairobi")

travis_bot.empathy # =>
leo_bot.flying_skills
Robot.make_robots(4)
