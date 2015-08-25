#read temp
#set target temp
#detect temp
  #A. new instance of temp
  #B. get desired temperature
  #C. turn-off or turn-on

class temperature

  # attr_accessor :on, :temperature, :
  #
  # def initialize(on, temperature)
  #   @on =
  #   @temperature = age

  attr_accessor :degrees
  attr_reader :target

  def initialize(temp, target)
  @degrees = temp
  @target_temp = target
  end

  def self.direct_temperature(all_temps, target_temp)
    all_temps.each do |temp|
      reading = Thermostat.new(temp, target_temp)
      reading.change_temp
      #puts "It is #{reading.degrees}. The Target is #{target_temp}"
    end
  end
end

  def change_temp(reading)
      if reading < @target_temp
        puts "Turn thermostat up by #{target_temp - reading} degrees."
      elsif reading > target_temp
        puts "Turn the temperature up by #{reading - target_temp} degrees."
      else
        puts "The temperature is perfect at 75 degrees!"
    end

private

def turn_on_heater

# if the target temperature is 75 but the actual temp is lower then increase, etc.
# provate methods can only be called inside a method, by other methods
# private methods can only be accesed inside private methods



all_temps = [25,35,45,55,65,75,85,95,105]

@target_temp = 75

  # funct
