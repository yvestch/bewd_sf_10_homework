require 'pry'


def get_love_interest
  puts "Who is your love interest? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest}? \n"
  puts "Answer 'yes' or 'no' \n"
  user_answer = gets.strip.downcase
  get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  case user_answer.downcase
    when "yes"
      puts "Isn't love great!"
    when "no"
      puts "You don't love #{love_interest}?"
    else
      puts "Not a valid answer."
      puts "Please put 'yes' or 'no'."
      capture_love_interest_response(love_interest)
    end
end

### This is where we call methods to run our script
get_love_interest
