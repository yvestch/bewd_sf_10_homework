#time to reverse it!

# ask user for input
puts "What string would you like to reverse?"

#assign input to variable
item = gets
reversed = ""

#print out input
puts "Ok, let's reverse \"#{item.chomp}\""

#assign item length to variable i, without return
i = item.length - 1

#add item's characters to reversed from back to front
while i >= 0
  reversed << item[i]
  i = i - 1
end

puts reversed

#puts item == reversed
#puts item.class
#puts reversed.class
#puts item.length
#puts reversed.class
###why aren't these the same??






#tell user if item is a palindrome
if item.downcase == reversed.downcase
  puts "#{item.chomp} is a palindrome!"
else
  puts "Doesn't look like #{item.chomp} is a palindrome :-("
end
