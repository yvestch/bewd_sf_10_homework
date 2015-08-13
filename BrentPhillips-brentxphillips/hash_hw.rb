
farm_animals = {"horse" => 4, "sheep" => 4, "chicken" => 2}
household_animals = {"cat" => 4, "bird" => 2, "fish" => 0}

animals = farm_animals.merge(household_animals)

puts "farm animals has #{farm_animals.keys} keys"
puts "household animals has #{household_animals.values} values"
puts "total animals and legs: #{animals}"
puts "animals has #{animals.length} pairs"
puts "animals with less than four legs #{animals.select{|k,v| v < 4}}"
puts "farm has a goat? #{farm_animals.has_key?("goat")}"
puts "fish has no legs? #{household_animals.has_value?(0)}"
