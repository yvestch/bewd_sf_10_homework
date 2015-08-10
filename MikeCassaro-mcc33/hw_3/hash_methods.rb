require 'pry'

dinner = { starter: "Salad", soup: "French Onion", appetizer: "Guacamole", entree: "Salmon", dessert: "Pie" }
old_menu = { entree: "Steak" }
vegan_option = { entree_2: "Tofu" }


puts "Tonight we will be featuring a #{dinner.length} course meal." #Returns the number of entries in the hash

puts "Please note that we no longer serve #{dinner.merge(old_menu)[:entree]} here."
#Merges together the dinner + old_menu hashes & returns the entree value

puts "Our courses include: #{dinner.keys}" #Returns the keys

dinner.merge!(vegan_option) #Adds an additional value to the hash
puts "We also offer #{dinner[:entree_2]} as a vegan option."

puts "The choices for this dinner include: #{dinner.values}" #Returns the values

puts "Which food would you like to order?"
order = gets.capitalize.chomp
if dinner.has_value?(order) #Checks to see if the user's input matches anything on the menu
  puts "Coming right up!"
else
  puts "What kinda order is that?!"
end

puts "What's that? You heard that we serve cocktails? Well that's #{dinner.has_key?(:cocktails)}."
#This checks if there is a key for 'cocktails' and returns true or false.
