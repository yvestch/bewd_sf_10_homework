def back_up(string)  #defined name of method. defined that it was a string that the method would be operating on
 letter = back_up.downcase.chars #defined component part--letter is the character that we will be re-arranging to test if it is a palindrome
  word = "" #introduced variable "word"
until letter.length == 0 #this needs to be here to show how long the program should do the following step
  word << letter.pop #the program needs to pull the last letter (broken into characters in the earlier step) from the end to be shoveled back to the beginning in "word"
end
end

def palindrome?(word) #method where palindrome operation is defined. Letter and word were introduced above and given steps for opeation on them.
if word.downcase == back_up(word).downcase #because we've introduced "back_up(word)" above, we've got the ability now to make a Boolean comparison. The above method should take the letters and separate them and reassemble them in the opposite order. That means that, if the words in the opposite order are the same as the original order (ie a palindrome), the statement should read as true

  puts "Yay! A palindrome!"
else "Aww man, you got it wrong this time."
end
end

puts "Please provide a word" #we need a section for where we capture the string from the user
 word = gets.chomp #capturing the string from the user. We will be operating with "word"

puts back_up(word) #presents the order we run the methods
puts palindrome?(word)
