#trying reverse method

def reverse(string)
  char = string.downcase.chars
  word = ""
  until char.length == 0
    word << char.pop
  end
  word.capitalize
end

def correct?(word)
  if word.downcase == reverse(word).downcase
    "Great!"
  else
    "Ooops!"
  end
end

word = gets.chomp
puts reverse(word)
puts correct?(word)
