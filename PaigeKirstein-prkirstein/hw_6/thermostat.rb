require 'pry'

#I started to build the class, but then accidentally built it w/out the class variable
#Thus, I built security_system.rb (also in this folder) in order to show
# that I understand class methods!


class Thermostat
  attr_accessor :outside_temp
  def initialize(outside_temp)
    @outside_temp = outside_temp
  end
end

def thermostat_works
  outside_temp = (0..100).to_a
  current_outside_temp = outside_temp.sample.to_i

  puts "What do you want the temperature to be?"
  target_temp = gets.chomp.to_i

  puts "The outside temperature is #{current_outside_temp}"
  if current_outside_temp == target_temp
    puts "The temperautre if perfect. The thermostat is off"
  elsif current_outside_temp > target_temp
    puts "Thermostat will cool to #{target_temp}"
  elsif current_outside_temp < target_temp
    puts "Thermostat will heat to #{target_temp}"
  else
    puts "you did something wrong!"
  end
  end

thermostat_works
