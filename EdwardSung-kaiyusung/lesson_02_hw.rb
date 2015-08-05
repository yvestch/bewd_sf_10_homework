#Reverse method.
def reverse_it(word)
  #Make everything lowercase, so that easier to compare.
  word= word.downcase
  reverse_word = ""

  # For word, repeat the following for its length.
  word.length.times do |i|
    #Take the last letter from word, and insert it into reverse_word and repeat.
    reverse_word.insert(i, word[-1-i].chr)
  end
  #capitalize first letter and add the remaining string.
  reverse_word = reverse_word[0].capitalize + reverse_word[1..-1]
end

def palindrome(word)
  #if comparing lowercase and all matches, then return palindrome.
  if reverse_it(word).downcase == word.downcase
    "This is a palindrome."
  else
    "This is not a palidrome."
  end
end

puts "Enter a word that you want to reverse: "
word = gets.chomp

puts reverse_it(word)
puts palindrome(word)
