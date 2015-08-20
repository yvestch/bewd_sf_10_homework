require 'pry'

class Robot

  #create getter and setter methods for each attribute
  attr_accessor :name, :type, :origin

  #every class needs a constructor to new instances of the Robot class
  def initialize(name, type, origin)
    #instance variables are not like local variables
    #instance variables can live within *most* class methods
    #instance variables start with @
    @name = name
    @type = type
    @origin = origin
  end

  def flying_skills
    if type == "SuperAndroid"
      add_flying_skills
    else
      "I cannot fly."
    end
  end

  def empathy
    if origin == "San Francsico" || origin == "Chicago"
      add_empathy
    else
      "I do not have empathy"
    end
  end

  def laser_fighting_skills
    if name == "Chris" || name == "Pete"
      add_laser_fighting_skills
    else
      "I do not have laser fighting skills."
    end
  end

  def self.make_robots(number_of_robots)
    #create 10 new instances fo Robot
    number_of_robots.to_i.times do |i|
      robot = Robot.new("Chris", "m1", "San Francsico")
      puts "I've created #{robot}."
    end
  end

  def self.random_robot_maker(number_of_robots)
    names = ["Chris", "Andrew", "Lisa", "Pete", "Paul"]
    types = ["Android", "SuperAndroid"]
    origins = ["San Francsico", "Los Angeles", "Las Vegas", "Chicago", "New York"]

    number_of_robots.to_i.times do |i|
      name = names.sample
      type = types.sample
      origin = origins.sample

      robot = Robot.new(name, type, origin)
      binding.pry
      puts "I've created #{robot}. It's name is #{name}. It's type is #{type}. It's origin is #{origin}."
    end
  end

  def add_flying_skills
    #use self within an instance method
    #designed to only be used by instances of the class
    puts "I am #{name}. I can fly!"
  end

  def add_empathy
    puts "I am #{name}. I have empathy!"
  end

  def add_laser_fighting_skills
    puts "I am #{name}. I have laser fighting skills!"
  end

end

Robot.random_robot_maker(10)

#convention: classes are never plural
#convention: class name should start with a capital letter
#convention: class with multiple names use camel case
#every class needs attributes

#requirements:
# 1) certain robots to have  flying skills
# 2) certain robots to have laser fighting skills

#instance method:
#looks like every other method, but contained in class
#now available to instances of Robot

#class methods
#starts with self.method_name
