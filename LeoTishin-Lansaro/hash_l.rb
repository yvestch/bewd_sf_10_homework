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
    if stars.include?(planet)
      puts "Here"
    else
      puts "No data. Try again"
  end
end

earth = {name: "earth", size: "medium", location: "3rd planet", population: "~7 bln"}
mars = {name: "mars", size: "medium", location: "4th planet", population: "0"}
pluto = {name: "pluto", size: "medium", location: "9th planet", population: "0"}
glieze = {name: "glieze", size: "huge", location: "20.22 bln light years", population: "?"}
kepler = {name: "kepler", size: "medium", location: "400 mln light years", population: "?"}

stars = []
stars.push(earth, pluto, mars, glieze, kepler)

galaxy(stars)
choice(stars)
