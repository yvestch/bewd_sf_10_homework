def get_love_interest
  puts "who do you love? \n"
  love_interest = gets.chomp
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
  puts "are you thinking of #{love_interest}?"
  puts "yes or no?"
  user_answer = gets.chomp
  case user_answer
  when "yes"
    puts "Good! You should be!\n"
  else
    puts "Bad! Why not?"
  end
end

get_love_interest
