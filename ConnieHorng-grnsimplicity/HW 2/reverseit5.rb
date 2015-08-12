def my_reverse(string)
  char = string.downcase.chars
  word = " "
  until char.length == 0
      word << char.pop
  end
  word.downcase
end

def is_palindrome?(word)
  if word.downcase == my_reverse(word).downcase
      "Yes, It's a palindrome"
  else
      "No, It's not a palindrome"
  end
end

#####
print "Please provide a word \n"
$stdout.flush
word = gets

puts my_reverse(word)
puts is_palindrome?(word)
