require 'pry'

class Thermostat
  #temprature
  attr_accessor :degrees, :target


  def initialize (degrees, target_temp)
    @degrees = degrees
    @target = target_temp
    #instance variable can be anywhere
  end

  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |temp|
    reading = Thermostat.new(temp, target_temp)
    puts "It is reading #{reading.degrees}. The Target is #{target_temp}"
    reading.compare_temp
    end
  end

  def compare_temp
    if @target > @degrees
      puts "turn off"
      turn_on_heater
    else @target < @degrees
      puts "turn on"
    end
  end

  private
  def turn_on_heater
    puts "testing"
  end

  def aircon
    puts "turn on aircon"
  end
end


end


all_temps = [30,20,10,50]
target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp)
