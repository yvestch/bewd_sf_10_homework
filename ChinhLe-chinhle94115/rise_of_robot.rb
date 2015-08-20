#part of homework is to have 3 "why" questions
#creat a class
#set_attributes & read/write capabilities
#build a constructor
#instantiate

require 'pry'
require 'pry-byebug'

class Robot    #ruby convention, class words are capitalized and never plural
  #name, model, origin


  #creates getter && setter methods for each attribute
  attr_accessor :name, :type, :origin  #creates two methods for each specified
# "attr_accessor" creates methods for the class
# so .new is a universal method that says we are creating something new, whereas
# we are creating new methods that exist for just this class (Robot)




  #this method creates new instances of the robot class
  #@instance_variables are available throughout the class.
  #@name is an instance variable

#create the constructor - a method that creates an instance of a class
  def initialize(name, type, origin)
    @name = name        # @ are instance variables, which are not like local variables, local variables only exist inside their method
    @type = type        # instance variables, can go to most methods in a class
    @origin = origin    #instance variables always start with @
  end

#this is a class method, it starts with 'self' and can be accessed outside of the class
  def self.make_robots(number)
  #create a new robot
    puts "We need to make #{number} of robots."
    robots = number.to_i
    robots.times do
      robot = Robot.random_robot_maker
      puts "#{robot.name} has been created"
    end
  end

  def self.random_robot_maker
    names = ["Chinh", "Sean", "Leslie", "Anne", "Mike"]
    types = ["Android", "Super-Android"]
    origins = ["NY", "LA", "Chicago", "Houston", "San Francisco"]
    #robots = Robot.new(names.sample, type.sample, origin.sample)
    #puts "#{type} #{name} from #{origin} has been created."

    name = names.sample
    origin = origins.sample
    type = types.sample

    robot = Robot.new(name, type, origin)
    puts "#{type} #{name} from #{origin} has been created."
    puts "**#{robot.flying_skills}. #{robot.laser_fighting_skills}.**"
    return robot
  end




#this is an instance method, 'self' refers to the instance of robot that called this
  def flying_skills
    if type == "Super-Android"
      puts "I can fly!"
    else
      puts "I cannot fly. {crying}"
    end
  end

  def laser_fighting_skills
    puts "I am #{name}. I have laser fighting skills." if name == "Chinh"
  end

  def empathy
    if origin == "NY" || origin == "LA"
      puts "I was designed to be empathetic."
  end
  end
end


Robot.make_robots(10)
