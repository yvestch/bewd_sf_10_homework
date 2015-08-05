#BEWD_10 // Sean Narvasa // Student
#HOMEWORK ASSIGNMENT: 08.05.2015 -- "REVERSE IT"

def reverser(string)             #defines a method to reverse the string
  char = string.downcase.chars   #takes the string, converts to downcase + array
  word = " "                     #got stuck here
  until char.length == 0         #got stuck here
      word << char.pop           #got stuck here
  end                            #ends the loop
end                              #ends the method

def palindrome_checker(word)    #defines a method to spit out our palindrome findings
  if word == reverser(word)     #if the inputted word is the same as the reversed, word then
    puts "Your word is #{word} and it IS a palindrome." #tell the user that the word is a palindrome
  else                                                  #otherwise
    puts "Your word is #{word} and it is NOT a palindrome." #tell the user the word isn't a palindrome
  end                                                       #end the loop
end                                                         #end the method

#The stuff below runs the program
puts "Hey! Enter a word, below. We're going to check for palindromes." #print out a prompt for the user to enter their word
word = gets.chomp #takes the user's word, stores it in the word variable, and cuts off remaining stuff from the user's inputted word

puts palindrome_checker(word)       #prints out the results from our palindrome checker method
