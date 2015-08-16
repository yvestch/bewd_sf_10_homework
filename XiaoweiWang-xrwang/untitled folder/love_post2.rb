def get_name
  puts "please put your boos name!"
  name = gets.chomp
  thinking_of(name)
end

def thinking_of(name)
  puts "Are you thinking of #{name}?"
  answer = gets.chomp
  giving_advice(name,answer)
end

def giving_advice(name,answer)
  lowercase = answer.downcase
  case lowercase
  when "yes"
    puts "great"
  when "no"
    puts "try harder!"
  else
    puts "you should think about somethings, yes no answers only!"
    thinking_of(name)
  end
end

get_name
