require 'pry'
#require 'pry-byebug'

def get_love_interest
  puts "Who do you love? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest}? \n"
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase
  get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  case user_answer
  when "yes"
    puts "Maybe you should call #{love_interest}"
  when "no"
    puts "Ok call soon, you love #{love_interest}"
  else
    puts "Invalid answer \n"
    puts "Please answer yes or no"
    binding.pry 
    capture_love_interest_response(love_interest)
  end
end

### This is where we call methods to run our script
puts get_love_interest
