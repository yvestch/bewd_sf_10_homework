require 'pry'

class Temperature
  #definte class attributes
  attr_accessor :current_temp, :target_temp

  #create instance of Temperature
  def initialize(current_temp, target_temp)
    @current_temp = current_temp
    @target_temp = target_temp
  end

  def set_temp
    if current_temp > target_temp
      cool_temp(current_temp, target_temp)
    elsif current_temp < target_temp
      heat_temp(current_temp, target_temp)
    else
      maintain_temp(current_temp, target_temp)
    end
  end

  private

  def cool_temp(current_temp, target_temp)
    puts "It's #{current_temp}. We need to reduce temperature by #{current_temp - target_temp} degrees to get to our desired temperatrue of #{target_temp} degrees."
  end

  def heat_temp(current_temp, target_temp)
    puts "It's #{current_temp}. We need to increase temperature by #{target_temp - current_temp} degrees to get to our desired temperatrue of #{target_temp} degrees."
  end

  def maintain_temp(current_temp, target_temp)
    puts "It's #{current_temp}. We at our desired temperature of #{target_temp} degrees."
  end

end

#create an array of temperatures
temperatures = [20,40,65,66,67,68,69,70,71,72,73,74,75,76,100,101]

#set a target temperature
target_temp = 75

#create an instance of each temperature
test_temp = Temperature.new(temperatures.sample, target_temp)
