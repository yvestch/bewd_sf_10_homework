class Robot

  def initialize(name, type, origin)                                            #writer
    @name = name
    @type = type
    @origin = origin
  end

  attr_reader :name, :type, :origin                                             #reader

  def self.random_robots(number)                                                #method that builds x number of robots according to user input
    user_number = number.to_i
    user_number.times do
      Robot.robot_builder
    end
  end

  def self.robot_builder                                                        #method that selects random qualities for each robot and puts them out
    names = ["Arnold1", "Arnold2", "Arnold3", "Arnold4", "Arnold5"]
    origins = ["North America", "South America", "Europe", "Asia", "Africa", "Australia", "Antarctica"]
    types = ["laser_droid", "empathy_droid", "flying_droid"]

    name = names.sample                                                         #randomizes names of robots used
    type = types.sample                                                         #randomizes types of robots used
    origin = origins.sample                                                     #randomizes origins of robots used

    robot = Robot.new(name, type, origin)                                       #selects each aspect for each robot & puts them together
    puts "I am an #{name} model of type #{type}. I was produced in #{origin}."
    puts robot.lasers?
    puts robot.empathy?
    puts robot.can_fly?
    puts "\n"
  end

  def lasers?                                                                   #method that provides lasers or not for each robot
    if type == 'laser_droid'
      "I shoot lasers out of my eyes."
    else
      "I don't have lazers, and I spell lazers wrong."
    end
  end

  def empathy?                                                                  #method that provides empathy or not for each robot
    if type == 'empathy_droid'
      "I feel the vibrations of Mother Gaia and care for all creatures."
    else
      "I walk on the grass and pick the flowers without remorse."
    end
  end

  def can_fly?                                                                  #method that provides wings or not for each robot
    if type == 'flying_droid'
      "I soar on the wings of an angel."
    else
      "If I were meant to fly, I would have been built with wings."
    end
  end

end

print "How many robots would you like to build?: "                              #asks for user input
user_number = gets                                                              #saves user input
Robot.random_robots(user_number)                                                #calls random_robots method in Robot class to start building


#don't quite understand attr_writer or .self
