require 'pry'

class Robot
  #name, model, origin (attributes)
  #creates getter & setter methods for each attributes
  attr_accessor :name, :type, :origin
  #this method creates new instances of the robot class
  #this method creates new instances of the robot class
  #@instance_variables are available throughout the class
  #@name is an instance_variable
  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  #this is an instance method
  #self refers to the instance of robot that called this method
  def self.make_robots(number)
    robots =  number.to_i
    robots.times do
      Robot.random_robot_maker
    end
  end

  def self.random_robot_maker
    names = ["Marshall", "Buster", "Tony", "Walter White","Ron Burgundy"]
    types = ["Android", "Super-Android"]
    origins = ["Lake Tahoe", "Portland", "Hawaii", "San Diego", "Milan"]

    name = names.sample
    origin = origins.sample
    type = types.sample

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} of type #{type}. I was made in #{origin}."
    puts "#{robot.flying_skills}"
    puts "#{robot.laser_fighting_skills}"
    puts "#{robot.empathy}"
  end

  def flying_skills
    if type == "Super-Android"
      "I can fly!"
    else
      "I can not fly"
  end
end



  def laser_fighting_skills
    if origin == "Lake Tahoe"
      "I have laser fighting skills"
    else
      "I have no lasers"
    end
  end

  def empathy
    if name == "Walter White"
      "I have no empathy for you!"
    else
      "I know how you are feeling!"
    end
  end


end

Robot.make_robots(40)

daniel = Robot.new("Daniel", "Super-Android", "San Francisco")












#creat a class
#set_attributes - read & write capabilities
#build a constructor
#instantiate
#****classes are never plural*****
#****classes should always be capitolized****
