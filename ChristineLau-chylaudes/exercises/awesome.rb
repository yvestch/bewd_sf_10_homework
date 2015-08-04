require 'pry'
def awesome_number(number)
  if number % 15 == 0
    puts "Awesome"
  elsif number % 5 == 0
        puts "Some"
  elsif number % 3 == 0
        "Awe"
  else
    puts "This #{number} is not awesome!"
  end
end

def awesome_seeker(topnum)
  1.upto(topnum) do |duh|
    awesome_number(duh)
  end
end

awesome_seeker(100)

# 1.upto(100) { |i| awesome_number(i), }
# 1.upto(100) { |i| print i, " " }
