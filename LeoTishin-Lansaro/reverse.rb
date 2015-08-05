#trying reverse method

puts "Which word do you want to reverse today?"
word = gets.chomp
puts ""
puts word.reverse
puts ""
puts "Nice! Want to do some more?"
puts ""
reply = gets.chomp
if reply == "no"
  puts "OK! Have a good one!"
elsif reply == "yes"
  puts ""
  puts "Just key in babe!"
  puts ""
  word = gets.chomp
  puts ""
  puts word.reverse
  puts ""
  puts "Nice! Want to do some more?"
  puts ""
  reply = gets.chomp
  if reply == "no"
    puts ""
    puts "OK! Have a good one!"
  elsif reply == "yes"
    puts ""
    puts "Then run me again babe!"
    puts ""
  end
end
