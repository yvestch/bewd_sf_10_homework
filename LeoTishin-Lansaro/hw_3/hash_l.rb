#hash trial

require 'pry'
require 'byebug'

def galaxy(stars)
  stars.each do |star|
  stars
  puts "#{star[:name]}"
end
end

def choice(stars)
  puts "Select planet"
  planet = gets.chomp.downcase
  stars.each do |star|
    if star[:name] == planet
      puts star
      aliens?(star)
  end
end
end

def aliens?(star)
  if star.has_key?(:population)
    puts "#{star} - There is someone!"
  else
    puts "Dont worry there are no aliens :[ grumpy!"
  end
end

earth = {name: "earth", size: "medium", location: "3rd planet", population: "~7 bln"}
mars = {name: "mars", size: "medium", location: "4th planet"}
pluto = {name: "pluto", size: "medium", location: "9th planet"}
glieze = {name: "glieze", size: "huge", location: "20.22 bln light years", population: "?"}
kepler = {name: "kepler", size: "medium", location: "400 mln light years", population: "?"}

stars = []
stars.push(earth, pluto, mars, glieze, kepler)

galaxy(stars)
choice(stars)
