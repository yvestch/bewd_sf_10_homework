def reversamente(string)
  word = ""
  i=0
  while i< string.length
	word = string[i] + word
  i+=1
end
return word
end


def palindrome(word)
  if word == reversamente(word)
  	"Hooray! You have found a palindrome"
  else
  	"Sorry, #{word} is NOT an palindrome"
  end
end

##########
puts "Please enter a word \n"
word = gets.chomp

puts reversamente(word) #("encyclopedia")
#puts reversamente #("kayak")
puts palindrome(word)
