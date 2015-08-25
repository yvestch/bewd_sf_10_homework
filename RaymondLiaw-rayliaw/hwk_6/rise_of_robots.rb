# Create a class
# Set attr - getter & setter methods
# Make a constructor
# Instantiate class

require 'pry'

class Robot

  # getter and setter methods - getter and setter methods defines @variable (instance variable)
  attr_accessor :name, :type, :origin

=begin
  def name
    @name
  end

  def name=(value)
    @name = value
  end
=end

  # constructor method - prepares new object for use: accepting args that a constructor uses to set required vars
  def initialize(name, type, origin)
    # instance variables
    @name = name
    @type = type
    @origin = origin
  end

  # Class methods
  def self.make_robots(number_of_robots)
    number_of_robots.to_i.times do
      self.make_random_robot
    end
  end

  # Make random robots from array of properties
  def self.make_random_robot
    names = ["Kanye", "Pratt", "Curry", "Dre", "Shaq"]
    type = ["Android", "Super-Android"]
    origin = ["Paris", "San Francisco", "Lisbon", "Singapore", "Munich"]

    robot = self.new(names.sample, type.sample, origin.sample)
    puts "Hi, I am #{robot.name}. I am a #{robot.type} made in #{robot.origin}."
    puts "*** #{robot.empathy} #{robot.flying_skills} #{robot.laser_skills}"
  end

  # Instance methods
  def empathy
    "I understand how you feel, human." unless self.name == "Kanye"
  end

  def flying_skills
    "I can fly!" if self.type == "Super-Android"
  end

  def laser_skills
    "Pew pew! I can shoot lasers." if self.origin == "Singapore"
  end

end

# Initialize
Robot.make_robots(10)
