require 'pry'

def get_love_interest
<<<<<<< HEAD
  puts 'Who do you love?'
  love_interest = gets.strip
  capture_love_interest_response(love_interest) ##its ok this is out of order!
end

def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest}?"
  puts "Answer 'Yes' or 'No'"
  user_answer = gets.strip.downcase
  puts get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  case user_answer #needs to have a star
    when "yes"
      "You must love #{love_interest}! Tell them!"
    when "no"
      "Are you sure you love #{love_interest}? Think about this a little bit more."
    else
      puts "That's not a valid answer."
      puts "'Yes' or 'no', please. I'm a simple-minded computer."
      binding.pry
      capture_love_interest_response(love_interest)#this is recursion!
=======
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
      puts "Then call #{love_interest} now!!!"
    when "no"
      puts "Ok. Call soon. You love #{love_interest}"
    else
      puts "That's not a valid answer \n"
      puts "Please answer 'Yes' or 'No' \n"
      capture_love_interest_response(love_interest)
>>>>>>> c81e4dbff69ea6ccec2c9a0c93cea338e4f846f6
    end
end

### This is where we call methods to run our script
get_love_interest
