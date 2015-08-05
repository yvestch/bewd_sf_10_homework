def reversed_it(word)
  array = word.downcase.chars
  # I created a new variable called array & set it equal to the word changed into an array
  reversed_word = ""
  # I created a new variable for a reversed_word and set it empty
  reversed_word << array.pop until array.empty?
  # The array variable adds each letter from the end. Reversed_word pulls from the array until the array is empty.
  reversed_word
  # Reversed word now is printed to show a new string
end


def is_a_palindrome?(word)
  string = reversed_it(word)
  #I set a new variable which performs the reversed_it method from above on whatever is passed to the palindrome method
  if word.downcase == string
    #Conditional to determine if the reversed argument is equal to the argument
  puts "This is a palindrome"
else
  puts "This is not a palindrome."
end
end

puts "Please type a word to be reversed"
word = gets.strip
#Word is set equal to input minus any white space
puts reversed_it(word)
#The reversed_it method is called and passed an argument set equal to the user's input
puts is_a_palindrome?(word)
