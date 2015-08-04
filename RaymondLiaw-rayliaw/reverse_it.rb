# Checks to see if parameter 'str' is a palindrome
def is_palindrome(str)
  # Downcases, strips out white space and punctuation, and converts to an array of chars
  original = str.downcase.gsub(/[^a-z0-9]/i, '').chars
  # Creates a new, reversed array
  flipped = reverse_array(original)

  # Checks to see if the original and reversed are equal (palindrome check)
  if original == flipped
    puts "#{str} is a palindrome! :)"
  else
    puts "#{str} is not a palindrome. :("
  end
end

# Returns a new array in reverse order without using the reverse method
def reverse_array(arr)
  # Instantiate array with same length as passed array
  flipped_arr = Array.new(arr.length)
  # Enumerate an array and save value to the reversed position in flipped_array
  arr.each_index { |e| flipped_arr[arr.length-1-e] = arr[e] }
  # Return the new reversed array
  return flipped_arr
end

# INIT
puts "Please provide a word or phrase:"
# Get input and chomp the enter character
input = gets.chomp
# Call method to check if input is a palindrome
is_palindrome(input)
