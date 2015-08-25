require 'pry'
# require 'pry-byebug'

class Robot
#name, model, origin attributes

#creates a getter/setter method for each attribute specified
  attr_accessor :name, :model, :origin

  #this method creates new instances of the robot class (constructor)
  #@instance_variables are available through out the class

  def initialize(name, model, origin)
    @name = name
    @model = model
    @origin = origin
  end

  #instance method
  def flying_skill
    "I am #{self.name}. I can fly! My serial number is #{self}"
  end


  #instance method
  def fighting_skill
    puts "I am #{self.name}.  I come to destroy" if model == "hunter"
  end

  def translation
    puts "I am #{self.name}. I can speak 23 million languages" if model == "protocol"
  end

  def locomotion
    puts "I am #{self.name}. I can fly into hyperspace" if model == "astromech"
  end



  #class method
  def self.make_robots(number)
    robots = number.to_i
    robots.times do
      robot =  Robot.new("sean", "killbot", "europe")
      puts "#{robot} has been created"
    end
  end

#class method, this method creates instances of class
 def self.randomizer(number)
   names = ["IG-88","C-3PO","R2D2"]
   models = ["hunter","protocol","astromech"]
   origins = ["kessel","tatooine","naboo"]
   robots = number.to_i
   robots.times do
    robot = Robot.new(name = names.sample, model = models.sample, origin = origins.sample)
    puts "Here is the robot #{name}. \n He is a #{model} from the planet #{origin}. \n His serial number is #{robot}\n"
    puts "#{robot.fighting_skill} #{robot.flying_skill} #{robot.translation}"

    # why can't we use a case to go through these methods?
    #

    # case robot
    # when @model == "hunter"
    #   Robot.fighting_skill
    # when @model == "protocol"
    #   Robot.translation
    # when @model == "astromech"
    #   Robot.flying_skill
    # end
  end
end


end

puts "lets make some robots, how many do you want?"
number = gets.chomp.to_i
puts "great, do you want them to be randomized?"
response = gets.chomp.downcase.to_s
if response == "yes"
Robot.randomizer(number)
else
Robot.make_robots(number)
end

#create a class
#set attributes read and write capabilities
#build a constructor
#create an instance of a class
