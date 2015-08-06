# reverse_it accepts a sting, reverses the characters, and returns the reversed string
def my_reverse(string)
  #creates variable for string passed to function; downcases string; creates array of characters
  char = string.downcase.chars
  #creates empty string where reversed characters to be stored
  word = ""
  #pops last char from string and adds to word; continues until string is empty
  until char.length == 0
    word << char.pop
  end
  #returns word (the reversed string)
  word.capitalize
end

# is_palindrome? accepts a string and determines if the reverse of the string is the same as the string passed into the function
def is_palindrome?(word)
  puts "The reverse of your word is: #{word}"
  #checks if word is equal to its reverse by calling my_reverse function
  if word.downcase == my_reverse(word).downcase
    "#{word} is a palindrome."
  else
    "#{word} is not a palindrome."
  end
end

#prompts user for word
puts "Please enter a word"
#sets user's input to word
word = gets.strip

#calls is_palindrome and passes into function user's word
puts is_palindrome?(word)
