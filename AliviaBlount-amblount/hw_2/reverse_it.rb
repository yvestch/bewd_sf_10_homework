puts "What is your word?"
word = gets
number_letters = word.length


puts "Lets check to see if " + word + "is a palindrome."

def palindrome_check(word)
  the_sequence = word.chars
  puts the_sequence
end

puts palindrome_check(word)

def check(the_sequence)
  if the_sequence[0] == the_sequence[-1]:
  else puts word + "Is not a palindrome"
    if the_sequence[1] == the_sequence[-2]:
    else puts word + "Is not a palindrome"
end

puts check(word)

  #not sure how I could check or run a loop to figure out how long a word is
  #and compare the first and last letters in sequence in a function
  # word = candy the
  # the sequence = ["c","a","n","d","y"]
