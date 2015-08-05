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

# Returns a new array in the reversed order without using the reverse method
def reverse_array(arr)
  i = 0
  flipped_arr = Array.new(arr.length)

  # Loop through the passed array and save to a new array in reverse order
  while i < arr.length
    flipped_arr[arr.length-1-i] = arr[i]
    i += 1
  end

  # Return the new array
  return flipped_arr
end


# INIT
puts "Please provide a word or phrase:"
# Get input and chomp the enter character
input = gets.chomp
# Call method to check if input is a palindrome
is_palindrome(input)
