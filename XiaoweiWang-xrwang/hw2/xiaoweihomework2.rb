# 1. get a string

puts "please enter a word below"
puts word = gets.strip


def reverse_string(word)
  # puts "word: #{word}"
  # 2. turn string into an array [a, b, c, d, e]

  word_array = word.chars

  # puts "word as array: #{word_array}"
  # 3. how big (length)

  word_length = word_array.size

  # puts "word length: #{word_length}"
  # 4.          0, 1, 2, 3, 4

  reversed_word = []

  (word_length-1).downto(0) do |i|
    # puts word_array[i]
    reversed_word.push(word_array[i])
  end

  # puts reversed_word.inspect
  return reversed_word.join
end

def is_palindrome?(word)
  reverse_string(word) == word
end


puts "#{word} is a palindrome: #{is_palindrome?(word)}"



# puts "'amanaplanacanalpanama' is a palindrome: #{is_palindrome?("amanaplanacanalpanama")}"
# puts "'abba' is a palindrome: #{is_palindrome?("abba")}"


#
# function downto(start, end, block) {
#   for (var i = start; i > end; i--) {
#     block(i)
#   }
# }




# reverse (.downto(length of string as array))

# 5.          4, 3, 2, 1, 0
