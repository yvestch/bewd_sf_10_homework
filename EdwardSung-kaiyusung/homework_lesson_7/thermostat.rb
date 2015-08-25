all_temps = [-30,-14,-4,-3,0,3,6,7,12,18,21,23,25,28,30,32,35,37,40]

target_temp = 28

require 'pry'

class Thermostat
  attr_accessor :degrees
  attr_reader :target

  def initialize(temp, target)
    @degrees = temp
    @target = target
  end

#self.target, @target and target are all the same in this instance method because @instance_variables.

  def self.detect_temperature(all_temps, target)
    reading = []
    all_temps.each do |temp|
      reading = Thermostat.new(temp, target)
      puts "It is #{reading.degrees}. The target is #{reading.target}."
      reading.calibrate_temp
    end
  end

  def calibrate_temp

    if degrees > target #this is the same as @degrees.
      turn_on_heater(@degrees)
    elsif degrees < target
      turn_on_air_conditioner(@degrees)
    else
      puts "Just right!"
    end
  end

#private methods can only be called inside other methods. Cannot be access by other instance.
#1. whatever we are doing do not want instance to have access to the behavior.
#2. Maybe a bunch of stuff, do not even want it inside of main thing.
private

def turn_on_heater(degrees  )
  puts "It is #{degrees}. Too hot. Turn on the air conditioner"
end

def turn_on_air_conditioner(degrees)
  puts "It is #{degrees}. Too cold. Turn on the heater."
end



end

#reading = Thermostat.new(45,28)
#reading.turn_on_air_conditioner
all_temp = Thermostat.detect_temperature(all_temps, target_temp)
