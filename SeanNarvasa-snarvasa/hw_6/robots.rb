#Sean Narvasa // Rise of the Robots Homework

require 'pry'

class Robot                                         #defines the class named "robots"
  attr_accessor :name, :type, :origin               #does the same job as attr_reader and attr_writer for name, type, origin

  def initialize(name,type, origin)                 #this is the constructor and the attributes of name, type, and origin
    @name = name                                    #name, type, origin are instance variables
    @type = type                                    #these instance variables can be called throughout one instance of a class
    @origin = origin
  end

  def self.make_robots(number)                      #instance method to create robots.
    robots = number.to_i                            #Converts the number to integer and stores it in the robots variable
    robots.times do                                 #take the integer stored in robots and do the thing below it, that many times
      Robot.random_robot_maker                      #call the random_robot_maker method
    end                                             #end the loop
  end                                               #ends the method


  def self.random_robot_maker                                                           #defines a new instance method called random_robot_maker
    names = ["Harold", "Kumar", "Ronnie", "Geraldine", "Janice"]                        #creates a new array called names and stores these robot names
    types = ["Android", 'Super-Android']                                                #creates a new array called types and stores Android and Super-Android
    origins = ["Chicago", "Brooklyn", "Oakland", "Venus", "San Francisco"]              #creates a new array called origin and stories these cities

    name = names.sample                                                                 #picks a random element from the names array
    origin = origins.sample                                                             #picks a random element from the origin array
    type = types.sample                                                                 #picks a random element from the type array

    robot = Robot.new(name, type, origin)                                               #Create a new robot instance and assign it to the local variable called robot
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."            #print out these values
    puts "#{robot.flying_skills} #{robot.empathy}"                                      #print out the behaviors
  end


  def flying_skills                                 #this is a flying_skills behavior within the Robot class
    if type == "Super-Android"                      #conditional that restricts the output for Super Android robots
      puts "I am #{self.name}. I can fly!"          #prints out the name of the robot and that it can fly if it's a Super Android
    else                                            #otherwise
      puts "I can't fly. So sad."                   #print out that the robot can't fly
    end
  end

  def empathy                                      #this is a empathy behavior within the Robot class
    if origin == "San Francisco"                   #if the origin is from SF then
      puts "I am also from San Francisco."         #print out that it's from SF
    else                                           #otherwise
      puts "I am from a strange land."             #tell people it's from a strange land
  end
end
end


#RUNIT
Robot.make_robots(10)                               #initializes the robot class, calls the make_robots method and passes it the number 10
