require 'pry'
require 'pry-byebug'

#Method to get an answer from user to the question
def get_love_interest
  puts "What do you love? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
end

#Prompts second question and depending on what the answer is, the third method below will spit out an answer under
#different answers given by user
def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest} on a daily basis? \n"
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase
  get_valid_answer(user_answer, love_interest)
end

#Method for giving various responses based on user input.
def get_valid_answer(user_answer, love_interest)
  case user_answer #needs a to the star
    when "yes"
      puts "Then go get some #{love_interest} now!!!"
    when "no"
      puts "Ok, well go get some Super Duper burgers since you love #{love_interest}"
    else
      puts "That's not a valid answer \n"
      puts "Please answer 'Yes' or 'No' \n"
      capture_love_interest_response(love_interest)
    end
end

### This is where we call methods to run our script
get_love_interest
