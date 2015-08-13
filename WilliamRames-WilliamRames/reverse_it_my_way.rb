require 'pry'

def my_reverse(string)
  char = string.downcase.chars #transforming
  word = "" #create an empty string for new word
  until char.length == 0
    word << char.pop #removes last element in array and returns letter
  end
  word.capitalize #this is what will be returned because it's the last line
end

def is_palindrome?(word)
  if word.downcase.strip == my_reverse(word.downcase.strip).downcase
    "Yes!! Palindrome!!" #reflects true
  else
    "Awww. Not quite a Palindrome" #reflects false
  end
end

puts "Give me a word \n" #ask for input
word = gets.strip #capture input
puts is_palindrome?(word)
