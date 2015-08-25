require 'pry'

class Thermostat

  attr_accessor :temp
  attr_accessor :target

  def initialize(degrees)
    @degrees = degrees
  end

  def calibrate_temp(target_temp)

    if @degrees > target_temp 
      turn_off_heater(@degrees)
    elsif @degrees < target_temp
      turn_on_heater(@degrees)
    else
      puts "It is #{@degrees} perfect temperature"
    end
     
  end

  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |degree|
    @degree = Thermostat.new(degree)
    @degree.calibrate_temp(target_temp)
    end

  end

  private
    def turn_on_heater(degree)
      puts "It is #{degree}. It is Cold, We need some heat!"
    end

    def turn_off_heater(degree)
      puts "It is #{degree}. It is very hot, We need some cold temp!"
    end

end


all_temps = [45,65,85,95,66,99,75,12,22,45,65,75,70,100,10,52,22]

target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp)


 
