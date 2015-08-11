#Alivia Blount Hw3
# GA BEWD

fruit_candy = Hash.new
fruit_candy["gummy worms"] = tangy
fruit_candy["skittles"] = colorful_sweet
fruit_candy["butterfinger"] = chocolate
fruit_candy["sour strips"] = sour
fruit_candy["liqorice"] = plain
fruit_candy["hershy"] = chocolate

letter_in_name = Hash.new
letter_in_name["a"] = 1
letter_in_name["l"] = 2
letter_in_name["i"] = 3
letter_in_name["v"] = 4
letter_in_name["i"] = 5
letter_in_name["a"] = 6
letter_in_name["b"] = 7
letter_in_name["l"] = 8
letter_in_name["o"] = 9
letter_in_name["u"] = 10
letter_in_name["n"] = 11
letter_in_name["t"] = 12

puts "My hash #{fruit_candy}"
fruit_candy.merge!(letter_in_name)

new_hash = fruit_candy.merge(letter_in_name)
puts fruit_candy
puts new_hash
