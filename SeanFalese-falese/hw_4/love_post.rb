require 'pry'
# require 'pry-byebug'

def get_love_interest
  puts "who do ya love?"
  var1 = gets.downcase.chomp
  capture_love_interest_response(var1)
end
def capture_love_interest_response(var1)
  puts "now tell me do ya love #{var1} forever? \n Oh Oh Oh"
  var2 = gets.downcase.chomp
  # binding.pry
  get_valid_answer(var2, var1)
end

def get_valid_answer(var2, var1)

  case var2.downcase
  when "yes"
   "Oh oh oh Paula Abdul! You are very lucky to love #{var1}"
  when "no"
   "Meatloaf for you buddy"
 else
    puts "Please try again 'yes' or 'no' answers only"
    capture_love_interest_response(var1)
  end
end

### This is where we call methods to run our script and output its result
puts get_love_interest
