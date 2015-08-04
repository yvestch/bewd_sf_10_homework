# Checks to see if 'str' is a palindrome
def is_palindrome(str)
  # Remove spaces and saves a reversed copy. Downcase string for comparison
  original = str.delete(' ').downcase
  flipped = original.reverse

  # Check if the original and reversed strings are equal
  if original == flipped
    puts "#{str} is a palindrome!"
  else
    puts "#{str} is not a palidrome."
  end
end


# INIT
puts "Please provide a word or phrase:"
# Get input and chomp the enter character
input = gets.chomp
# Call method to check if input is a palindrome
is_palindrome(input)
