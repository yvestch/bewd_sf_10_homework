require 'pry'

# Prompts the user to input a name
def get_name
  puts "Who do you love?"
  name = gets.strip
  get_answer(name, false)
end

# Asks a question
def get_answer(name, first_time)
  # Checks if this is the first time asking the question or not
  if !first_time
    puts "\nHave you told #{name} that you love them? (Yes or no)"
    answer = gets.strip.downcase
    valid_answer_check(answer, name)
  else
    puts "\nSorry, \"yes\" or \"no\" only:"
    answer = gets.strip.downcase
    valid_answer_check(answer, name)
  end
end

# Check if the answer was a valid 'yes' or 'no'
def valid_answer_check(answer, name)
  # Responds based on y/n answer
  case answer
  when "yes"
    puts "\nYou're in great shape then! :)"
  when "no"
    puts "\nTell #{name} that you love them right now."
  else
    # Calls back get_answer if not a valid answer
    get_answer(name, true)
  end
end

# INIT
get_name
