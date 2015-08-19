require 'pry'
require 'pry-byebug'


  class Robot #Classes are never plural
    #constructor - a way to create an instance of a class

  #Creates getter && setter for each attribute
   attr_accessor :name, :type, :origin

    #This method creates new instances of the robot class
    # instance variables are available through out the class.
    # @name is an instance_variable
    # basic constructor below
    def initialize(name, type, origin)
      @name = name #instance variable, always start with @
      @type = type #instance variable
      @origin = origin #instance variable

    end


    def self.make_robots(number)
     robots = number.to_i
     robots.times do
       Robot.random_robot_maker
      #robot = Robot.new("Kayann", "Android", "Chicago")
      #puts "#{robot.name} has been created"

      #OPTIONAL
      #robots.time do |robot|
      #robot = Robot.new("Tim", "Super-Android", "New York")
      #puts "#{robot.name} has been created"
      #end

    end
    


    #This is an instance method
    #self refers to the instance of robot that called this method
    
    def flying_skills
      #"I am #{self.name}. I can fly!"
       if type == "Super-Android"
       "I can fly!"
       else
       "I can not fly {crying}"
       end

    end

    def laser_fighting_skills
      #"I am #{name}. I have laser fighting skills"
      if type == "Super-Android" && origin == "San Francisco"
        "I have laser fighting skills."
      else
        "No laser for me."
      end
    end

    def empathy
      if name == "Gabriel" || origin == "Oregon"
        puts" My name is Gabriel"
      else
        puts "I am not Gabriel"
      end
    end


    def self.random_robots_maker
       names = ["David", "Caro""Angel", "Gabriel"]
       type = ["Android", "Super-Android", "Micro-Android", "Mini-Android"]
       origin = ["New York", "San Francisco", "Los Angeles", "Oregon"]

       name = names.sample
       origin = origin.sample
       type = type.sample

       robot = Robot.new(name, type, origin)
       puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."
       puts "#{robot.laser_fighting_skills}"
       puts "#{robot.empathy}"
    end

  end


Robot.make_robots(10)

#nana = Robot.new("Nana", "Super-Android", "New Orleans")
#puts nana.flying_skills
#puts self.make_robots(10)
#puts nana 


# Instance var starts with an @
#Create a class
##set_attributes -read & write capabilities
#Build a constructor
#Create our instance of a class
#Instantiate
#
#
#
#


