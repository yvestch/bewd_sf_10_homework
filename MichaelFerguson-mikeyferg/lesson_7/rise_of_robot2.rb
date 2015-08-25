

# #Classes have state and behavior
# #State & Object Factory: factory that creates and instiantes robots
# #Behavior: Collection of class methods, instance methods, instance variable, local variables, constants etc.,
#
# #instantiate
# #getter/setter
# #attributes - name, type, origin
#
# #instance methods- fly, laser_master,
#   call private methods if robot has the skills
#
# #class method- make robots(# of robots to make)-
#
# #class methods- make on robot
#     makes a random robot from fiven array
#
# names = ["Steve", "Donna", "Kelly" "Celeste", "Erik", "Mark", "Ramon"]
# types = ["Super Android", "Android"]
# origins =  ["Venus", "Mars"]
#
# to_s instance methods that print about robot
#
# prive
# def add_wings_and_take_off
#    print abut the ability
# add_laser_training

require 'pry'

class Robot
  attr_accessor :name, :type, :origin

  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  def self.make_multiple_robots(num)
    num.times do
      current_robot = Robot.random_robot_maker
      current_robot.to_s
      current_robot.fly
      current_robot.lasers
    end
  end

  def fly
    if self.type == "Super Android"
      add_wings_and_take_off
    end
  end

  def lasers
    if self.origin == "Mars"
      add_laser_training
    end
  end


  def self.random_robot_maker
    names = ["Steve", "Donna", "Kelly", "Celeste", "Erik", "Mark", "Ramon"]
    types = ["Super Android", "Android"]
    origins =  ["Venus", "Mars"]

    name = names.sample
    type = types.sample
    origin = origins.sample

    Robot.new(name, type, origin)
  end

  def to_s
    puts "Hello my name is #{self.name}, I am a #{self.type} and I am from #{self.origin}"
  end

  private
  def add_wings_and_take_off
     puts "I can fly!"
  end
  def add_laser_training
    puts "Check out my cool lasers!"
  end

end

# mike = Robot.new("mike", "android", "michigan")
# binding.pry
# puts mike

# rand_robot = Robot.random_robot_maker
# rand_robot2 = Robot.random_robot_maker
# rand_robot3 = Robot.random_robot_maker
# binding.pry
# puts rand_robot

Robot.make_multiple_robots(5)
