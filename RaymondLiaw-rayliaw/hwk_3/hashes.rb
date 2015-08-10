warriors = { point_guard: "Stephen Curry", shooting_guard: "Klay Thompson", power_forward: "Draymond Green", small_forward: "Andre Iguodala", center: "Andrew Bogut"}
warriors_staff = { coach: "Steve Kerr", owner: "Joe Lacob", general_manager: "Bob Myers", small_forward: "Luke Walton" }

# Displaying the hash and using #length
puts "\n\nHere's a sample hash called 'warriors'\n#{warriors}"
puts "The hash has #{warriors.length} key-value pairs"

# Using #keys and #values
puts "\nThe keys are the positions: #{warriors.keys}"
puts "The values are the players: #{warriors.values}"

# Using #merge and !merge with #has_value and #has_key
puts "\nLet's show a second hash called 'warriors_staff'\n#{warriors_staff}"
puts "\nUsing #merge, we get: #{warriors.merge(warriors_staff)}"
puts "\nHowever, with #merge, let's see if the 'warriors' hash has the coach keys:"
puts "Has key 'coach'? #{warriors.has_key?(:coach)}"
puts "Has value 'Steve Kerr'? #{warriors.has_value?('Steve Kerr')}"

puts "\nUsing !merge on the other hand..."
puts "#{warriors.merge!(warriors_staff)}"

puts "\nHas key 'coach'? #{warriors.has_key?(:coach)}"
puts "Has value 'Steve Kerr'? #{warriors.has_value?('Steve Kerr')}"

puts "\nYou can also see that the SF position was replaced in both merges by Luke Walton\n\n"
