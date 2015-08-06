require 'pry'


def reverse_it(pass)
  char = pass.downcase.chars
  pass = " "
  until char.length == 0
    pass << char.pop
  end
  pass.strip
end

def pass_check(pass)
  if pass.downcase == reverse_it(pass).downcase
    puts "Come on in!"
  else
    puts "#{pass.capitalize} is not the password. get the hell out!"
  end
end

puts "Want to go to a bar?"
  var1 = gets.chomp.downcase
if var1 == "yes"
    puts "Great what is your name?"
    name = gets.chomp.downcase
    puts "Hi #{name.capitalize} you walk into a bar."
    # system ("cls") or system ("clear")
    puts "The door is shut"
    # system ("cls") or system ("clear")
    puts "You knock on the door"
    # system ("cls") or system ("clear")
    puts "The bouncer slides a little window open and asks for a password"
  puts "enter the password".upcase
  pass = gets.strip.downcase
    # binding.pry

puts pass_check(pass)

puts "Hey #{name.capitalize}  What you drinkin kid?"

greeting = "Ok #{name.capitalize}, that all?"

drink = gets.chomp

goodbye = "Tight, #{name.capitalize}, that'll be $#{drink.length} dollars"

puts greeting

if drink == "purple drank"
    puts "time to chop it up and screw it,
      #{name.reverse} #{drink.reverse}
      #{drink.length.to_s} #{drink<< "s"}
      #{drink.strip}
      #{drink.prepend("dope ").upcase}"
    end

  puts goodbye

  else
    puts "boo you suck!"
end
