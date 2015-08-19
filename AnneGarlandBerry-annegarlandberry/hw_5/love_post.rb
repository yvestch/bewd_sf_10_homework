require 'pry'
require 'pry-byebug'

def get_love_interest

  puts "Who are you in love with?\n" #\n takes you to a new line
  love_interest = gets.strip
  capture_love_interest_response(love_interest) #if method reqires info, make sure that you are giving info
end

def capture_love_interest_response(love_interest) #ruby creates methods that describe what you're trying to do
  puts "Is #{love_interest} on your mind?\n"
  puts "Please give a 'yes' or 'no' answer \n"
  user_answer = gets.strip.downcase
  puts "your answer is #{user_answer}"
  get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest) #variables inside methods are available only inside that method
case user_answer
when "yes"
  puts "Why don't you call #{love_interest}?"
when "no"
  puts "You should call #{love_interest}! You care about them!"
else
   puts "You moron. You did not put a valid answer"
    puts capture_love_interest_response(love_interest)
  end

  puts "Who do you love? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest} ? \n"
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase
  get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  case user_answer #needs a to the star
    when "yes"
      puts "You should call #{love_interest} now!!!"
    when "no"
      puts "Ok. Call soon. You love #{love_interest}"
    else
      puts "That's not a valid answer \n"
      puts "Please answer 'Yes' or 'No' \n"
      capture_love_interest_response(love_interest)
    end

end

### This is where we call methods to run our script
get_love_interest
