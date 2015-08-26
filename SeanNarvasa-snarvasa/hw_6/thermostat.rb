#Sean Narvasa // Lesson 6 Homework // Thermostat
#1. read temp
#2. set target temp, and
#3. detect current temp and change if outside target temp range.

require 'pry'                                                 #require pry

class Thermostat                                              #create a new class called Thermostat

  attr_accessor :temperature                                  #Defines the setter and getter for the temperature instance variable

  def initialize(temperature)                                 #Our constructor that will define the temperature instance variable
    @temperature = temperature                                #instance variable called temperature
  end

  def get_desired_temperature(target_temp)                    #Define a new instance method to print out the recommendation based on the temperature
    if @temperature == target_temp                            #if temperature is equal to target_temp, then
      puts "It's #{@temperature}. PERFECT."                   #print out that it's perfect
    elsif @temperature <  target_temp + 5                     #if the temperature is less than the target_temp and within a range of 5 degrees, then
      puts "ERMAGERD. It's #{temperature}. Let's crank up the heater, I'm freezing."      #print out the need to adjust the heather
    else @temperature > target_temp                                                       #otherwise if the temperature is hotter than the target_temp is hotter then
      puts "#{temperature}?! It's hella hot, yo! Let's crank up the A/C up in here."      #print out the need to turn on the A/C
    end                                                                                   #end the if else
  end                                                                                     #end the instance method

  def self.detect_temperature(all_temps, target_temp)          #define a new instance method to detect the temperature
    all_temps.each do |temperature|                            #for all items in the all_temps array, do the stuff below and store it in temperature
      @temperature = Thermostat.new(temperature)               #Create a new class instance of Thermostat
      @temperature.get_desired_temperature(target_temp)        #Call the instance method to print out our recommendations
    end                                                        #end the loop
  end                                                          #end the method

end                                                            #end the class

#########RUNIT

all_temps = [70, 65, 72, 93, 88, 62, 105, -5, 81, 71, 69]      #defines an array of temperatures and assigns it to all_temps
target_temp = 70                                               #defines the user's target temperature
Thermostat.detect_temperature(all_temps, target_temp)          #call the detect_temperature class method. Pass in all_temps and target_temp
