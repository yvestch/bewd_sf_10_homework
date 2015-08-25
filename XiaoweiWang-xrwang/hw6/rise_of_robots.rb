
require 'pry'

#define a class
class Robot
  #name, robot type or model, origin

  #attr_accessor creates getter and setter methods of every attribute you specify
  attr_accessor :name, :type, :origin

  #this initalize method creates new instances of the robot class
  def initialize (name, type, origin)
    #atsign is an instance variable

    #instance variables are available throughout the class, @name is an instance variable.
    #compare this to local variables inside methods
    @name = name
    @type = type
    @origin = origin
  end

  def self.random_robot_maker
      names = ["don","mon","bon","crown","frown","bown","mown"]
      type = ["android","super-android"]
      origin = ["beijing","brooklyn","boston","berlin","vegas"]

      name = names.sample
      type = type.sample
      origin = origin.sample

      robot = Robot.new(name, type, origin)
      puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."
      puts "#{robot.flying_skills}, #{robot.laser_fighting_skills}"

      # binding.pry
  end

  def self.make_robots(number)
    #create a new robot
    robots = number.to_i
    robots.times do
      Robot.random_robot_maker

      # robot = RobotArmy.new("Kayann", "Android", "Chicago")

      # puts "#{robot.name} has been created"
    end
  end



#this is an instance method. it uses "self" and understands that self is the instance.
#instance method is a method that creates an instance of a class
#refers to an instance of robot that called this method
  def flying_skills
      if type == "super-android"
      "I can fly"
      else
      "I can not fly {crying uncontrollably}"
      end
  end

  def laser_fighting_skills
      if origin == "berlin"
        "I can speak German and laser fight"
      else
        "I can't speak german and i cant laser fight"
      end
  end

end

# nana = Robot.new("nana","superandroid","new orleans")
# # binding.pry
# puts nana.flying_skills
# puts nana.place

Robot.make_robots(4)


#set attributes - read and write capabilities
#build a constructor
#create an instance of a class



#robotfactory
#1. flying skills
#2. laser fighting skills
#3. instance method -- looks like every other method
