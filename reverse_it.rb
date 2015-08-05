def my_reverse(word)
  chars = word.chars
  result = ""
  while chars.length > 0
    result.prepend(chars.shift)
  end
  return result
end

def is_palindrome?(word)
  if word.downcase == my_reverse(word).downcase
    puts "#{word} is a palindrome"
  else
    puts "#{word} isn't a palindrome"
  end
end

puts "Please enter a word"
test_word = gets
test_word = test_word.chomp
puts "Your word is #{test_word}"
is_palindrome?(test_word)
