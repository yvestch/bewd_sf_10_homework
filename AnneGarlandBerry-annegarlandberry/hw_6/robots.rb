require 'pry'
require 'byebug'

class Robot ##constructor is the method that creates an instance of a class
#state

##class method is usually used when you need to have access to behavior that involves more than one instance of your class

  #getter && setter methods for each attribute--getter--read only; setter--can add information
  attr_accessor  :name, :type, :origin ##writes two methods for each symbol specified
  ##we need to determine what attributes we want for the class
  #state
  ##attributes are not determined by attr_accessor

  def initialize(name, type, origin) ##state
    @name = name
    @type = type
    @origin = origin ###need to create a method to create new instances of the robot class
    ##instance varialbes are available throughout the class
    ##instance variables are not like local variables--local variables only exist within the method but instance variables do not
  end

def self.make_robots(number_of_robots) ##self means class method
  robots = number_of_robots.to_i  ## there are three kinds of methods--instance methods, class method, private method; instance method defines behavior that only an instance of the class has access to
  robots.times do
    Robot.random_robot_maker

    ##class method is a method that cannot be accessed by an instance of the class; method that provides behavior somehow beneficial to overall class; accessed or called outside of
##review and complete thermostat on your own
##review Well-Grounded Rubyist
  ##create a new robot
  end
end

  def self.random_robot_maker
    names = ["Abe", "Flounder", "Halibut", "270Strategies", "Hillary"]
    type = ["Android", "Super-Android"]
    origin = ["Washington", "Philadelphia", "Little Rock", "Trenton", "San Francisco"]

    name = names.sample
    type = type.sample
    origin = origin.sample

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."
    puts "#{robot.empathy} #{robot.flying_skills} #{robot.laser_fighting_skills}"
    return robot
  end




def empathy ##only android
  unless type != "Android"
    puts "I am #{self.name}. I feel what you're feeling."
  else puts "I don't care."
  end
end


def flying_skills ##only super android
  if type == "Super-Android"
    puts "I am #{self.name}. I can fly!" ##self is an instance method within an instance variable
  else puts "Womp. Womp."
  end
end

def laser_fighting_skills
  puts "I am #{self.name}. I have laser fighting skills."
  end
end
Robot.make_robots(3) ##way to call an attribute is to call the object and the instance variable


##function of an instance method is to provide an instance of a class with access to behavior

  ##instance methods can only be called by instances of a class
  ##instance methods are useful because they usually give instances access to a class of behavior
  ##class methods are methods that can be accessed outside of the class; it cannot be accessed by an instance of the class  ex. Robots.new
  ##if we are trying to create a factory of robots, an instance method cannot create a factory
  ##every class method starts with "self.[thename]"
  ##def self.make_robots

  ##
