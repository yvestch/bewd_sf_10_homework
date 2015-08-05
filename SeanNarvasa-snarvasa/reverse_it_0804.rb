#BEWD_10 // Sean Narvasa // Student
#HOMEWORK ASSIGNMENT: 08.05.2015 -- "REVERSE IT"

def reverser(string)
  char = string.downcase.chars
  word = " "
  until char.length == 0
      word << char.pop
  end
end

def palindrome_checker(word)
  if word == reverser(word)
    puts "Your word is #{word} and it IS a palindrome."
  else
    puts "Your word is #{word} and it is NOT a palindrome."
  end
end

#RUN IT#
puts "Hey! Enter a word, below. We're going to check for palindromes."
word = gets.chomp

puts palindrome_checker(word)
