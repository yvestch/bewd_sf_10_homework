def love_interest

puts "Who do you love?"
person = gets.chomp

case
when person.length>3
puts "Ask #{person.capitalize} out!!"
when person.class != "string"
  puts "Thats not a name"
  love_interest
else person.length<=3
  puts "Ask me out!!"
end

end

love_interest
