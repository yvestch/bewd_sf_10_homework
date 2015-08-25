# A - new instance of temp
# B - get desired temp
# C - turn off or turn o


class Thermostat

attr_accessor :current

def initialize(current)
  @current = current
  #@target_temp = target_temp                 Why can't I do this, so I can refer to it throughout the class
end

def calibrate_temp(target_temp)                #2- now we are directed to this method, carrying in the target_temp
  if @current < target_temp
  turn_heater_on(@current, target_temp)        # <---look at this. We have to pack up the instance variables
elsif @current > target_temp                   # we want to carry in to another method
  turn_ac_on(@current, target_temp)
  end
end


#def self.detect_temp(all_temps, target_temp)   #1- the running of the instance starts here, taking in values given outside of the class
#  all_temps.each do |temp|                     #we use each instance of temp to become the current
def self.detect_temp(target_temp)
   all_temps = (rand(50...99))                  #For purpose of testing output, I much prefer the all_temps being read randomly here, rather that being passed in from an array
   @current = Thermostat.new(all_temps)
#  @current = Thermostat.new(temp)

    @current.calibrate_temp(target_temp)       #we use the current to call another method
#  end
end

private

def turn_heater_on(current, target_temp)           #3- we will go to this method next, can't bring it in as @current
  puts "It is #{current} degrees, too COLD for your desired temperature of #{target_temp}. The system has turned the heater on"
end

def turn_ac_on(current, target_temp)               #3- or this one
  puts "It is #{current} degrees, too HOT for your desired temperature of #{target_temp}. The system has turned the AC on"
end

end

#all_temps = [45, 65, 85, 95, 66, 99, 75, 80, 72, 74, 80] - this is better if we are actually pulling temps from outside of class or from somewhere else

target_temp = 75

10.times {Thermostat.detect_temp(target_temp)}  #this leads to the random all_temp varialbe in the method, it was more fun
