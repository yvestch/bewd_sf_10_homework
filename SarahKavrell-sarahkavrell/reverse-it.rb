def reverse_it(string)
  #this takes the string and downcases it and returns an array of characters
  char = string.downcase.chars
# this creates a string titled word that things can be passed through
  word = " "
  #this tells the loop to keep going until there are 0 characters left
  until char.length == 0
#this shovels the
    word << char.pop
end
#this tells the word to capitalize its first letter
    word.capitalize
end

reverse_it(hello)
