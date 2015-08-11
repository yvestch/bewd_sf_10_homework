tates = Hash.new
city = Hash.new
int_city = Hash.new

states = {"California" => "Sacramento", "Nevada" => "Reno", "Portland" => "Oregon", "New Orleans" => "Lousiana"}
city   = {"San Francisco" => "California", "Las Vegas" => "Nevada", "Seattle" => "Washington"}
int_city  = {"London" => "England", "Paris" => "France", "Madrid" => "Spain", "Rome" => "Italy"}

puts "My hashes and keys values are: \n\n"

puts"states hash\n"
puts states, "\n"
puts"city hash\n"
puts city, "\n"
puts"int_city hash\n"
puts int_city, "\n"

puts "The length of my states hash is: #{states.length}\n"

puts "The size of my city hash is: #{city.size}\n"
puts "The size of my Internacional city hash is: #{int_city.size}\n"

puts "Merging Hashes\n"

new_state_hash = states.merge(int_city)
city.merge!(int_city)

puts "My new state hash after merging is: \n"
puts new_state_hash, "\n"
puts "My new city hash after merging is: \n"
puts city, "\n"


puts "my states keys are: \n"
puts "#{states.keys}\n"


puts "my states values are: \n"
puts "#{states.values}\n"


puts "Checking for a value in a hash\n"
x = int_city.has_value?("Rome")
puts x, "\n"
puts "Checking for a key value in a hash\n"
y = int_city.has_key?("Italy")
puts y, "\n"

