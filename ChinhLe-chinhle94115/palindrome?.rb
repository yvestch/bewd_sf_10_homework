puts "What is your word?"
word = gets.downcase.chomp          #get input in downcase so all letters same
word_array = word.chars             #change input to array form
backwards = []                      #create empty array for reversed word
while word_array.length > 0         #keep doing the block until no letters left
  backwards = backwards << word_array.pop  #add last letter of word to new array
  end
if backwards.join == word           #join elements of new array to create string
  puts "That's a palindrome!"       #is new string and word the same?
else
  puts "Sorry, that's not a palindrome."
end
