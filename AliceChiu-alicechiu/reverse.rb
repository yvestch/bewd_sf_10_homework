#reverse method
#require 'pry'

def reverse_method(string)
  char = string.downcase
  input = ''
  input2= ""
end

def palindromes(input)
  if input != reverse_method.downcase
    "No, enter another word. Lower case text is not recogized"
  elsif input.capitalize
    "No need to capitalize the first letter, try again!!"
  else
    "Awesome, this program returned a PALINDROME!!!!!!!!!!"
  end
end

#binding.pry

####

puts "Enter a word and no numbers otherwise this program will blow up!"
input = gets.chomp

puts reverse_method(string)
puts palindromes (input)
