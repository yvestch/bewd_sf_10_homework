#an array of temps
#target temp

#create a thermoastat class to create instances of temp

#compare temp to target temp
#have a method to turn ac and one to trun it off

require 'pry'
#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]

#set by user
target_temp = 75

class Thermostat
  attr_accessor :temperature

  def initialize(temperature)
    @temperature = temperature
  end

  def self.temp_maker(all_temps, target_temp)
    all_temps.each do |temp|
      temp_inst = Thermostat.new(temp)
      puts "The temp is #{temp_inst.temperature}."
      temp_inst.temp_compare(target_temp)
    end
  end

  def temp_compare (target_temp)
    if temperature > target_temp
      turn_on_ac
    elsif temperature < target_temp
      turn_on_heater
    else
      puts "The temp is just right! \n \n"
    end
  end

  def turn_on_ac
    puts "Turn on the ac. \n \n"
  end
  def turn_on_heater
    puts "Turn on the heater. \n \n"
  end


end

Thermostat.temp_maker(all_temps, target_temp)
