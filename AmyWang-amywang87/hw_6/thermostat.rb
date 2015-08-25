#create a script that reads the data from nest
#reading an array of temperatures. Create an instance of temp.
#if the temp is above the targt temp, create a method that reduces the temp
#if the temp is greater than the target temp by X degrees, turn off the thermostat

#create an instance of each temperature
require 'pry'

class Thermostat

attr_accessor :degrees

  def initialize(degrees, target)
    @degrees = degrees
    @target = target
  end

#self.target, @target, and target are all the same inside of this instance method b/c instance variables live
  def calibrate_temp(target_temp)
    if @degrees > target
      turn_off_heater(@degrees)
    elsif @degrees < target
      turn_on_heater(@degrees)
    else
      puts "Its #{@degrees}. Its fine"
    end
  end

  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |degrees|
      @degrees = Thermostat.new(degrees)
      @degrees.calibrate_temp(target_temp) #instance method that is responsible for calibration or recalibration
    end
  end

private #cannot be accessed direclty by instance variable or class method

def turn_on_heater(degrees)
  "It's #{degrees}. Turn on."
  end

def turn_off_heater(degrees)
  "It's #{degrees}. Turn off."
end

end

all_temps = {45, 65, 84, 39, 05, 30, 40, 79, 95, 96, 39, 39}

target_temp = 75


Thermostat.detect_temperature(all_temps, target_temp)
