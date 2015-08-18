require 'pry'

def get_love_interest
  puts "Who do you love? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
  #Accepts a user's input to indicate who they love and assigns it to 'love_interest'  variable
  #Calls the method below and passes the love_interest variable.
end


def capture_love_interest_response(love_interest) #Accepts captured user input as argument
  puts "Do you think about #{love_interest} ? \n"
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase #New variable is set equal to user's input
  get_valid_answer(user_answer, love_interest) #Below method is called and passed both user inputs.
end

def get_valid_answer(user_answer, love_interest)
  case user_answer #Case statement runs through all potential matches below
    when "yes"
      puts "Then call #{love_interest} now!!!"
    when "no"
      puts "Ok I guess you don't think about #{love_interest}"
    else
      puts "That's not a valid answer \n"
      puts "Please answer 'Yes' or 'No' \n"
      capture_love_interest_response(love_interest)
    end
end


#First method is called
get_love_interest

# I could not figure out how to evaluate whether the first variable was a valid answer.
# Within the get_valid_answer answer I attempted to add a case statement to evaluate whether 'love_interest' was empty,
#and if so loop back to the first method until that variable was not empty, but when I called the 'get_valid_answer' method within the first method it returned
#'user_answer' as an undefined local variable.
#Besides evaluating whether the first variable, 'love_interest' is not empty, the rest of the program works.
