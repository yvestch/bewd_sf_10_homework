=begin
while i< l
  b.chars[i]=a.chars[l-i]
  puts b
  puts b.chars[i]
  i+=1
end
# in the loop, i first used the method chars but soon realized that that method doesn't change the string permanently

case
when second == b, puts "xare Palindromes indeed!"
else puts "Sorry, those words are not palindromes "
end

=end

# prompts the user to enter a string

puts "Hello, please enter the first word you want to compare"
a= gets.chomp.downcase
b= String.new
l= a.length
#b.length= l
i=0


while i<l
  b.prepend(a.chars[i])
  i+=1
end

# puts "the reverse of that string is #{b} "

puts " Enter the second word you want to compare: "
second= gets.chomp.downcase

if second == b
  puts "#{a} and #{second} are palindromes!"
else
  puts " #{a} and #{second} are not palindromes!"
end
