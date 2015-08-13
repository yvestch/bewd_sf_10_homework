require 'pry'

def get_love_interest
  puts "Hello, who is your love interest? \n"           #\n goes to the next line
  love_interest = gets.strip
  puts "Your love interest is #{love_interest}"         #prints out love_interest
  capture_love_interest_response(love_interest)         #passes in the response to a capture_love_interest_response method
end
def capture_love_interest_response(love_interest)
  puts "Are you thinking of #{love_interest}"
  puts "Respond Yes or No"
  response = gets.strip.downcase                        #normalizes the answer
  get_valid_answer(response, love_interest)             #makes these variables available to the get_valid_answer method
end

def get_valid_answer(response, love_interest)             #you need to give more information to the method (e.g 0 number of arguments)
  case response                                           #checks the response variable
    when "yes", "y", "YES", "YEAH"
      puts "Maybe you should call #{love_interest}?\n"
    when "no", "No", "n", "Nope", "NOPE"
      puts "Ok, maybe call them soon. You love #{love_interest}!"
    else                                                  #edge case
      puts "Your answer is the not valid \n"
      puts "Please put 'Yes' or 'No'\n "                  #asks the user again
      capture_love_interest_response(love_interest)       #recalls the capture_love_response method until a valid answer is received
    end
end
##################################################
get_love_interest
