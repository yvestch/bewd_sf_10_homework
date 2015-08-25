

class = Thermostat
  attr_accessor :temperature

  def initialize(temperature)
    @temperature = temperature
  end

  def get_desired_temperature(get_temp)
    if @temperature > get_temp + 5
      puts "Its hot"
    elsif @temperature < get_temp
      puts "Its cold"
    else
      puts "Its perfect"
    end
  end
end

get_temp = 70

#can't figure out what's wrong to progress
