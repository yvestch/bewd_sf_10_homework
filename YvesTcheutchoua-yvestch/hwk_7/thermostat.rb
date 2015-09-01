# my Thermostat software
=begin
1. read temp, 2. set target temp, and 3. detect current temp and change if outside target temp range.
#The temperature is being read externally somewhere, so let's just create an array of those readings
#and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]

#set by user
target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp)

travisgaff [12:09 PM]
Try to write the methods in the class yourself:
def initialize(temperature)
def self.detect_temperature
def get_desired_temperature(target_temp)
def turn_off_heater(temperature)
def turn_on_heater(temperature)
=end

require 'pry'
require 'pry-byebug'

class Thermostat
  attr_accessor :target_temp, :temp
  #useful to be able to use target_temp & temp outside of the class thermostat

  def initialize(target_temp, temp)
    @temp = temp
    @target_temp= target_temp
    # initializing the instance variable, which can be used anywhere within the class, as opposed to local variables

  end

  def self.set_temp
    puts "What would you like the target temperature to be?"
    target_temp = gets.chomp.to_i
    # prompt for a target temperature and convert the input to an interger
    temperature = Thermostat.new(target_temp,temp)
    if temp == target_temp
      puts "Great! the temperature is already set to your desired temperarute."
    else
      adjust_thermostat(target_temp)
    end

  end

  def self.adjust_thermostat(target_temp)
    temp = target_temp
    puts "The thermostat has been set to meet your desired temperature of #{target_temp} "
  end

  def self.temp_samples
    temp = rand(-100...100)
    #assign a random interger between -100 to 100 to the variable temp
    puts "Let's set the temperature to #{temp} for example \n"
    Thermostat.set_temp
  end

end

Thermostat.temp_samples
