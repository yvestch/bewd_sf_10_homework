require 'pry'

class Thermostat

  attr_accessor :current_temp, :target_temp

  # Instantiate
  def initialize(current, target)
    @current_temp = current
    @target_temp = target
  end

  # Create new objects for each temperature
  def self.get_temperatures(all_temps, target_temp)
    all_temps.each do |temp|
      t = Thermostat.new(temp, target_temp)
      t.temperature_check
    end
  end

  # Checks the temperature if it falls under target range and turns on heater or A/C
  def temperature_check
    puts "Bringing #{current_temp} degrees to #{target_temp} degrees"

    if @current_temp < @target_temp - 5
      puts "Turning on heater..."
      self.heat while @current_temp < @target_temp - 5
      puts "#{current_temp} degrees reached! Turning off heater..."
    elsif @current_temp > @target_temp + 5
      puts "Turning on A/C..."
      self.cool while @current_temp > @target_temp + 5
      puts "#{current_temp} degrees reached! Turning off A/C..."
    else
      puts "Temperature is perfect!"
    end

  end

  # Heats temperature by 5
  def heat
    @current_temp += 5
  end

  # Cools temerpature by 5
  def cool
    @current_temp -= 5
  end

end

# INIT
all_temps = [45,65,85,95,66,99,75,12,22,45,65,75,70,100,10,52,22]
target_temp = 75

Thermostat.get_temperatures(all_temps, target_temp)
