

food_pairings = Hash.new
food_pairings["tacos"] = "tequila"
food_pairings["pizza"] = "beer"
food_pairings["seafood"] = "white wine"

puts "There are  #{food_pairings.length} foods with  pairings."
puts "They are #{food_pairings.keys}"
puts "There are #{food_pairings.length} alcohols with pairings."
puts "They are #{food_pairings.values}"
puts "Is there a pairing for tacos? #{food_pairings.has_key?("tacos")}"
puts "Is there a pairing for pasta? #{food_pairings.has_value?("pasta")}"

more_pairings = Hash.new
more_pairings["tacos"] = "margaritas"
more_pairings["pasta"] = "red wine"

#more_pairings.merge(food_pairings)
#puts food_pairings

puts "Let's merge with more pairings so that we'll have a pairing for pasta."

puts food_pairings.merge(more_pairings)

puts "Ah that changed the tacos pairing, let's go back to the original food_pairings hash"
puts food_pairings

puts "On second thought, let's merge the two permanently, margaritas are better than plain tequila anyways"
puts food_pairings.merge!(more_pairings)
