require 'pry'

#Read the temperature
#Set target temp- create an instance with the target temp
#If the temp is above the target temp, create a method that gets desired temp

class Thermostat

attr_accessor :degrees

  def initialize(temp, target)
    @degrees = temp #degree instanse variable set equal to the passed temp argument
    @target = target #target instance varaible is set equal to the passed temp argument.
  end

#self.target, @target and target are all the same inside of this instance method, beause @instance_variables live within the class.
  def turn_off_turn_on
      if degrees < @target
        puts "It's #{degrees} degrees. That's too cold. I'll turn off the AC. \n"
        return update_temp
      elsif @degrees > @target
        puts "It's #{degrees} degrees. That's too hot, I'll turn on the AC. \n"
        return update_temp
      else
        puts "It's #{degrees} degress. Feels pretty nice in here."
      end
  end

  def update_temp #Updates the temperature by setting the degrees variable equal to the target variable of 75 degrees.
    @degrees = @target
    puts "It's now #{degrees} degrees. Feels good."
  end



  def self.detect_temp(all_temps, target) #Iterates through the all_temps array and creates a new instance of thermostat for each temperature
    all_temps.each do |temp|
      thermostat_reading = Thermostat.new(temp, target)
      thermostat_reading.turn_off_turn_on
    end
  end


end

#array of temperatures
all_temps = [45,33,75,77,88,99,45]
target_temp = 75
Thermostat.detect_temp(all_temps, target_temp)
