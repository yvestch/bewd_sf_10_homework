#array_work-in_class
states = []
states << "California"
states << "Hawaii"
states.push("Ohio", "Kentucky", "New Mexico", "Florida", "Texas", "California", "Ohio", "Michigan", "New Mexico", "Colorado", "Kansas", "Illinois", "Indiana", "Missouri", "Iowa", "Nebraska", "Arizona", "Nevada", "Delaware")
puts states
puts "#{states.size} = states list size"
puts "We just removed #{states.pop}"
puts "We just added one #{states.unshift("Vermont")}"
states << "Michigan"
puts states.shift
puts "These are unique states in your list #{states.uniq}"
puts "  "
puts "Weeee...what about this #{states.shuffle}"
puts "   "
puts "Wow, this is better #{states.sort!}"
puts "  "
puts "In the end, there are #{states.length} states in our list"
puts "Does the list include Utah? #{states.include?("Utah")}"
puts "And finally, the number of unique states in your list: #{states.uniq.size}"
