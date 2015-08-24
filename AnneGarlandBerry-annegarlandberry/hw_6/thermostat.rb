require 'pry'

##we want this to create a class that will behave as a temperature adjuster on each instance of temperature adjustment
##we need to think about what attributes the class, temperature adjuster, will have--a temperature that the thing is at any moment, and a temperature that the thing should have. Each of these is an instance
## there are temperatures that are random that the thermostat can pick up on and, depending on their relationship to the temperature it should be, will do something on that instance
##the class method should create the behavior of all instances of temperature adjustment, so the temperature adjustment.
##the instance method should make an adjustment on instances of that class, or what temperature something is


##array of temps
##if temp is above target temperature, create a method that reduces the temperature
## read temperatures
## instance of temperature

##
class Thermostat ##self has state. in an instance method, it refers to itself
  ##private methods are methods that can only be called inside other methods
  ## 1) we don't want an instance to have access to it
  ## 2) you have to pass in the instance defined in an instance variable--it doesn't automatically convey in private methods

attr_accessor  :temp ## getter and setter

  def initialize(temp) ## temperature is the state we are concerned with
    @temp = temp
  end

 ##set the array outside the method
##local variable would be

  def self.random_temp_generator(all_temps) ##self.target, @target and target are all the same inside of this instance method because instance variables live
    all_temps.each do |temp|
    @temp = Thermostat.new(temp)
    @temp.adjust_temp_hotter_or_cooler
    end
  end

  def adjust_temp_hotter_or_cooler
    if @temp > 75 + 5
      puts "Whew! #{@temp} degrees! We need to cool this thing down!"
    elsif @temp < 75 - 5
      puts "Alright, it's #{@temp} degrees. I bet you're cold right now. Let's heat it up."
    else puts "This feels great!"
    end
  end


all_temps = [2, 15, 24, 33, 41, 57, 66, 78, 81, 90, 101]
Thermostat.random_temp_generator(all_temps)

##
end
