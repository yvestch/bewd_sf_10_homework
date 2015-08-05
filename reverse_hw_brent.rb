
puts "Please enter a single word:"
word = gets.chomp
puts "Your word reversed is:"
puts word.reverse
reference = word
copy1 = word.dup
copy2 = String.new(word)
puts "Is your word a palindrome?"
copy3 = copy2.reverse
puts copy2 == copy3
