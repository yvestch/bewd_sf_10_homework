#Read temperature from Nest -> array of temperatures
#Create instance of temperature
#If temperature above target temperature (set range), create a method that reduces the temperature
#If temperature is below target, create method that raises temperature
require 'pry'

class Thermostat
  attr_accessor :degrees
  attr_reader :target

  def initialize(temp, target)
    @degrees = temp
    @target = target
  end

  def adjustment
    #self.target, @target, target are all the same inside an instance method
    #because they are inside an instance method
    #local variables are only called inside the method
    if @degrees == @target
      puts "*No action*"
    elsif @degrees > @target
      puts "*Turn it down*"
    else
      puts "*Turn it up*"
      turn_on_heater(@degrees)
    end
  end

  #If 75 target, its 30 degress, print "Turn it up". its 90, print "Turn it down". If right, print "Stay"
 def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |temp|
      reading = Thermostat.new(temp, target_temp)
      puts  "\nIt is #{reading.degrees}. The target is #{target_temp}"
      reading.adjustment
    end
 end

#private method example
 private
 def turn_on_heater(number)
   puts "Activate heater."
 end

end

all_temps = [45, 65, 85, 95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]
target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp)
