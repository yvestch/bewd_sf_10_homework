#first, let's create a reverse method

def my_reverse (string)
  my_array = string.downcase.chars #create an array
  word_rev = " " #create the future reversed word
  until my_array.length == 0  #keep running the following until we've used all of the letters
    word_rev << my_array.pop #add the last letter of the array to reversed word
  end
  word_rev.strip.capitalize #strip out empty spaces and capitalize
end

def is_palidrome?(word) #collect the world
  if word.downcase == my_reverse(word).downcase #downcase everything and check for equals
    puts "It's a palidrome!"
  else
    puts "Not a palidrome :( Try again!"
  end
end

puts "Enter a word" #tell the user to enter a word
word = gets.chomp #create variable for word entered
puts my_reverse(word) #run and write results for the reverse function
puts is_palidrome?(word) #check and see if it's a palidrome!
