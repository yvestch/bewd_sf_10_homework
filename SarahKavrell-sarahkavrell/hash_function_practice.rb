
#cities = ["San_Francisco", "San_Jose", "Oakland", "Richmond", "Berkeley"]

def cities_length #define the method
  cities = ["San_Francisco", "San_Jose", "Oakland", "Richmond", "Berkeley"]
  cities.each do |city| #telling the method to iterate through the cars variables
    puts "#{city}" if cities.length  > 6
  end #ends the "do"
end #ends the function

#call the method
puts cities_length
