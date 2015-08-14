require 'pry'

def my_family
  {"Jack" => "Dad", "Lee" => "Mom", "Meredith & Laura" => "sister"}
end


def extended_family
  {"Melissa & Judy" =>"Aunt" , "Johnny & Mike"=>"Uncle" }
end

def home_sick?
puts "Do you miss home right now?"
  taco = gets.strip
  response = whom_do_you_miss(taco)
end

def whom_do_you_miss(ans)
    family = my_family
    extended = extended_family
  if ans == "yes"
    puts "Who do you miss?\n"
    ans = gets.strip.downcase.capitalize
    if family.has_value?(ans)
        puts "Hi #{ans}"
    else
      puts "#{family.merge(extended_family)} are all back on the East Coast?"

    end
  else puts "You totally do! #{family.values} all miss you \n"
    response = home_sick?
  end
  response = tell_me_more(family)
end
#     case ans
#       #family.has_value?(ans)
#
#     when "mom"
#       puts "#{family.keys} are people you miss? You miss #{family.length} people?"
#     when "dad"
#       puts "Hey, Dad!" if family.has_key?("Jack") && family.has_value?("Dad")
#     else
#       puts "#{family.merge(extended_family)} are all back on the East Coast?"
#     end
#   else puts "You totally do! #{family.values} all miss you \n"
#     response = home_sick?
#   end
#   response = tell_me_more(family)
# end

def tell_me_more(family)
  puts "#{family.merge!(extended_family).keys} all miss you!"
end


puts home_sick?
