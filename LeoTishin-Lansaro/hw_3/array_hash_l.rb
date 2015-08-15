#creating hashes and arrays

require 'pry'

def the_planets
  planets = ["Earth", "Gliese", "Pluto", "Kepler", "Mars"]
  planets.each do |planet|
    puts "#{planet}" if planet.length > 5
  end
end

the_planets
