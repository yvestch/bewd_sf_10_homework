require 'pry'

class Thermostat

attr_accessor :temperature

def initialize(temperature, target)
  @temperature = temperature
  @target = target
end

  #self.target target and @target are all the same within this instance method.
  def calibrate_temp
    if temperature > target
      puts "It is #{temperature}. Thats too hot! Turn on the AC!"
    elsif temperature < target
      puts "Brrr! Its #{temperature}. Its too cold, turn on the heat"
    else
      puts "Ahhh! Just right!"
    end
  end

  def self.detect_temperature(temps, target_temp)
    temps.each do |temp|
      reading = Thermostat.new(temp, target_temp)
      puts "It is #{reading.temperature}. The target is #{target_temp}"
    end
  end

private

def turn_on_heater
end

def turn_on_air_conditioner
end 

end






temps = [50, 60, 65, 67, 70, 71, 75, 80, 85, 90, 95, 100]

target_temp = 75

Thermostat.detect_temperature(temps, target_temp)
