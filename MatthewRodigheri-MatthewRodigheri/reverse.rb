


print "Hey, gimme a string: "
str = gets.chomp                                                #takes user's input and saves it as variable 'str'

str_chars = str.chars                                           #saves the characters in str as str_chars
arr = []                                                        #creates and empty array
count = str_chars.length                                        #saves the length of str_chars as a variable
while count>0                                                   #loops through str_chars
  arr.push(str_chars.pop)                                       #pops last element off str_chars and pushes it to arr
  count-=1                                                      #counts down
end
string_reversed = arr.join('')                                  #joins elements of arr together into a string and saves that as 'string_reversed'
puts "Your string reversed is '#{string_reversed}'"             #puts 'string_reversed' to user



 if string_reversed.downcase.split == str.downcase.split        #conditional checks if string_reversed is the same as str
   puts "Your string is a palindrome"                           #if true, it tells user
 else
   puts "Your string is not a palindrome"                       #if false, it tells user
 end
