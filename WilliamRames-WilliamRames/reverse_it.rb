require "pry"

def my_reverse(word) #creating method for reversing that requires a word
  chars = word.chars #turning word into an array
  result = "" #creating placeholder for reversed word
  while chars.length > 0 #for as long as the array isn't empty...
    result.prepend(chars.shift) #...remove the first element in the array and add it to the beginning of the word
  end
  result #return reversed word
end

def is_palindrome?(word) #creating method for checking for palindrome
  if word.downcase == my_reverse(word).downcase #if a lowercase version of the word is the same forwards and backwards..
    puts "#{word} is a palindrome" #... then show it is a palindrome...
  else #... if not...
    puts "#{word} isn't a palindrome" #... then state the word isn't a palindrome
  end
end

puts "Please enter a word" #ask for input
test_word = gets #capture input
test_word = test_word.chomp #remove trailing new line character
puts "Your word is #{test_word}" #repeat word back to user
is_palindrome?(test_word) #run palindrome test
