require 'pry'

#read temp
#set target temp
#detect temp
#create method to raise and lower Temperature
#detect state of thermostat when inside a range

class Thermostat

attr_accessor :temp, :set


  def initialize(temp, set)
    @temp = temp
    @set = set
  end


#class method
  def self.turn_on (all_temps,set_temp)
    t = Thermostat.new(all_temps, set_temp)
    puts "the current temp is #{t.temp} and the set point is #{t.set}"
    return t
  end

  def control_temp
    if @temp > @set
      turn_down(@set)
    else
      turn_up(@set)
      end
  end

private

  def turn_down(set)
    puts "turning down the heater to match the set point of #{set} "
    @temp = @set
    puts "Confirmed, the temperature has been set to match the requested temperature of #{temp}"
  end

  def turn_up(set)
    puts "turning up the heater to match the set point of #{set}"
    @temp = @set
    puts "Confirmed, the temperature has been set to match the requested temperature of #{temp}"
  end

end
all_temps = [40, 50, 60, 70, 80, 90]
set_temp = [40, 50, 60, 70, 80, 90]

t = Thermostat.turn_on(all_temps.sample,set_temp.sample)
t.control_temp
