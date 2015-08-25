
require 'pry'


class Robot
  #creates getter && setter methods for each attribute
  attr_accessor :name, :type, :origin
  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  def self.make_robots(number)
    robots = number.to_i
    robots.times do
      Robot.random_robot_maker
    end
  end


  def self.random_robot_maker
    names = ["Bob", "John", "Craig", "Stewart", "Ron"]
    origins = ["Earth", "Mars", "Venus", "Mercury", "Pluto"]
    types = ["R2D2", "C3PO"]

    name = names.sample
    origin = origins.sample
    type = types.sample

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."
    
  end

end



Robot.make_robots(10)
