require 'pry'

class Thermostat

  attr_accessor :degrees
  attr_reader :target

  #have a target temperature
  #if the target temperature falls out of range, create a method to make if go back?
  #create an instance of temperature

  def initialize(temp, target)
    @degrees = temp
    @target = target
  end

  def turn_on_heater(temp)    #need to use the right argument (temp)
    while temp < target - 3
      puts "Let's turn up the heat. It's now #{temp + 2}; is that better?"
      temp = temp + 2
    end
  end

  def turn_on_ac(temp)      #need to use the right argument (temp)
    while temp > target + 3
      puts "Let's turn up the air conditioning. It's now #{temp - 2}; is that better?"
      temp = temp - 2
    end
  end

  def adjust(temp, target)  #Thermostat.adjust does nothing
    if temp < target - 3
      puts "It's #{temp}. Brr. That's cold."
      turn_on_heater(temp)
    elsif temp > target + 3
      puts "It's #{temp}. Whew! That's hot."
      turn_on_ac(temp)
    else
      puts "Ahh. Just right!"
    end
  end

#class method
  def self.detect_temperature(all_temps, target)  #self.whatever is what defines the class method
    all_temps.each do |temp|
      reading = Thermostat.new(temp, target)
      reading.adjust(temp, target)
    end
  end





end
all_temps = [45, 65, 85, 95, 35, 22, 70]

target = 70

Thermostat.detect_temperature(all_temps, target)
