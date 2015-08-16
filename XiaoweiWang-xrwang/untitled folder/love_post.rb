
def love_name
  puts "Please enter the name of your love interest"
  interest_name = gets.chomp
  return "#{interest_name}"
end

def thinking_of
  # get name of love interest
  name = get_love_name
  puts "are you thinking of #{name}?"
  answer = gets.chomp
end

def advice_giving
  answer = thinking_of.downcase
  case answer
  when "yes"
    puts "great"
  when "no"
    puts "try harder!"
  else
    puts "you should think about somethings, yes no answers only!"
    thinking_of
  end
end

def thinking_of(name)
  puts "are you thinking of #{name}?"
  answer = gets.chomp
end

thinking_of()


#calling
get_love_name
