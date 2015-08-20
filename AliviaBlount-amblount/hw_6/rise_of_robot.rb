#create a class
#set_attributes
#build a contructor
#instatiate

require 'pry'




class Robot
#name, type/ model, origin,
#getter set information
#setter  method how does it work?
#ruby meta programming

#creates getter and setter methods for each attribute
  attr_accessor :name, :type, :origin



  def self.random_robot_maker
    name = ["alivia", "alvin", "ariel", "marion", "lamar"]
    type = ["apple", "android", "java_andriod", "yellow", "green"]
    origin = ["Ethiopia", "Eritrea", "Moracco", "Greece", "Italy"]

    name = name.sample
    origin = origin.sample
    type = type.sample

    robot = Robot.new(name, type, origin)
binding.pry
    puts "Hello I am #{name}. You are a #{type} robot. You were created in #{origin} "
    puts
  end

# this method creates new instances of the robot class
#instance variables always start with an @
#instance variables are available throughout the class
#@name is an instance variable
  def initialize(name, type, origin)
    @name = name+"!"
    @type = type
    @origin = origin
  end

  def self.make_robots(number_of_robots)
    robots = number_of_robots.to_i
    robots.times do
      Robot.random_robot_maker
    end
    #   robot = Robot.new("Kayann", "Android", "Chicago")
    # puts "#{robot.name} has been created"
    #create a new robot
  end

  def empathy
    "i was designed to be empathetic" if origin == "Greece"
  end



  #this is an instance method
  #self refers to the instance of robot that called this method
  def flying_skills
    if name == "alivia"
      puts "I am the best"
    else
      puts "unfortunately I am an inferior person."
    end
    #behavior within a class
    #{}"I am #{self.name}. I can fly!"
  end

  def laser_fighting_skills
    if type != "apple"
      puts "darn I am not fruit affiliated"
    else
      puts "Yeah, I am an apple."
    end
    #puts " I am #{name}. I have laser fighting skills!"

  end

end

Robot.make_robots(10)




#robot factory
#1. flying skills (behavior) within a class specific to the class need instance method
#2. laser fighting skills
#3.
#4.
