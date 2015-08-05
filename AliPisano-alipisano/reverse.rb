
#define the method 
def reverse(str)

	#turn string into array 
	letters = str.split('')

	#make empty array
	rev_array = []

	#use the each method to iterate through the array
	letters.each do |letter|

		#use unshift to add letters to empty rev_array array	
		rev_array.unshift(letter) 
	end

	#turned rev_array into a string and stored in a new variable
	result = rev_array.join()


	if result == str
		return true 

	#otherwise, return false = the word is not a palindrome
	else
		return false
	end	
end

puts reverse("ali")
puts reverse("tacocat")