#Sean Narvasa | 08.11.15 | HW #2
#On your own, use each method for hashes we used in class today (.length, .merge, .merge!, .keys, .values, .has_key?, .has_value?)

require 'pry'

#defining my hashes
godfather = {title: "The Godfather", year: 1972, director: "Francis Ford Coppola", rating: 5}
scarface = {title: "Scarface", year: 1983, director: "Brian De Palma", rating: 4}
scent_of_a_woman = {title: "Scent of a Woman", year: 1992, director: "Martin Brest", rating: 3.5}
heat = {title: "Heat", year: 1995, director: "Michael Mann", rating: 4}

#Using the .length method
puts "#{godfather[:title]} has #{godfather.length} keys value pairs. \n\n"

#Using the .merge method
puts "These are the two hashes I will merge:"
puts "Scarface: #{scarface}"
puts "Scent of a Woman: #{scent_of_a_woman}"
puts "After the merge: #{scarface.merge(scent_of_a_woman)}\n\n"

#Using the .merge! method
puts "These are the two hashes I will destructively merge:"
puts "Scarface: #{scarface}"
puts "Scent of a Woman: #{scent_of_a_woman}"
puts "After the destructive merge: #{scarface.merge!(scent_of_a_woman)}\n\n"

#Using the .keys method
puts "#{godfather[:title]} hash has the following keys: #{godfather.keys} \n\n"

#Using the .values method
puts "The 'Heat' has has the following values: #{heat.values}\n\n"

#Using the .has_key? method
puts "Does the Scent of the Woman hash have a key of lead_actress? #{scent_of_a_woman.has_key?("lead_actress")}"

#Using the .has_value? method
puts "Does the Scent of the Woman hash have a rating value of 3.5? #{scent_of_a_woman.has_value?(3.5)}"
