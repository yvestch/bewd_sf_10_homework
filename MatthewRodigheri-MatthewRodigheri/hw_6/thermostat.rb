class Thermostat

  def initialize(temperature)                                                   #writer
    @temperature = temperature
  end

  attr_reader :temp                                                             #reader

  def self.temp_detector(temperatures, target_temp)                             #method goes through array of temps, creates a new instance and calls temp_output
    temperatures.each do |temperature|
      @temperature = Thermostat.new(temperature)
      @temperature.temp_output(target_temp)
    end
  end

  def temp_output(target_temp)                                                  #method compares temp to target temp and puts appropriate info
      print "It is currently #{@temperature} degrees."
      if @temperature < target_temp
         puts " Warm-Up Commencing"
      elsif @temperature > target_temp
         puts " Cool-Down Commencing"
      else
         puts " The current temperature is your ideal temperature"
      end
      puts "\n"
  end


end



temperatures = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]                        #array of temps

print "What is your ideal temperature between 10 & 100 degrees?: "              #asks user for input
target_temp = gets.to_i                                                         #saves user input as 'target_temp' as an integer

Thermostat.temp_detector(temperatures, target_temp)

#in the solution, she uses attr_accessor, which I don't fully understand
