require 'pry'

#Since I had the robot answers already, I was having trouble getting myself to actually
#think of anything original, so I decided to build something new instead!

#okay, we're talking about a class here
class Security
attr_accessor :temperature, :lock, :motion, :time

#defining the class
  def initialize(temperature,lock,motion,time)
    @temperature = temperature
    @lock = lock
    @motion = motion
    @time = time
  end


#here we run the security
def self.run
  security = Security.data_collection
end

#here we collect data on current conditions
def self.data_collection
  temperatures = (0...100).to_a
  lock_boolean = [true, false]
  motion_boolean = [true, false]
  times = ["morning", "daytime", "evening", "nighttime"]

  temperature = temperatures.sample
  lock = lock_boolean.sample
  motion = motion_boolean.sample
  time = times.sample

  security = Security.new(temperature, lock, motion, time)

#and her we analyze how the conditions are going. I wonder if these calls should be in a separate method?
#but I'm not sure how to do that so I'm leaving them here for now
  puts security.time_status
  puts security.temperature_status
  puts security.lock_status
  puts security.motion_status
  puts security.security_risk
end

def lock_status
  if lock == false
    puts "The house is unlocked"
  elsif lock == true
    puts "The house is locked"
  end
end

def temperature_status
  puts "The temperature is #{temperature}"
  if temperature > 80
    puts "The temperature is too hot. Turning on the a/c"
  elsif temperature < 60
    puts "The temperature is too cold. Turning on the heat"
  else
    puts "The temperature is great"
  end
end

def motion_status
  if motion == true
    puts "There is motion in the house"
  elsif motion == false
    puts "There is no motion in the house"
  else
    puts "Error"
  end
end

def time_status
  puts "It's currently #{time}"
end

#if it seems like no one is home and the door is unlocked, that's bad
#I know there's some repetition here, but I was having trouble creating the unless statement, advice
#for refactoring this would be great, thanks!
def security_risk
  if motion == false && lock == false && time == "nighttime"
    puts "Oh no, everyone is asleep and the door is unlocked!"
  end
  if motion == false && lock == false && time != "nighttime"
    puts "Oh no, no one is home and the door is unlocked!"
  end

end


end

Security.run
