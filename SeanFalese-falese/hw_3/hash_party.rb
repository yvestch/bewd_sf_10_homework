#includes here
require 'pry'

# methods up here
def hash_supply()
    types =[]
    list = []
  puts "How many things did you bring today??"
    count = gets.chomp

  #loop entry until all items are entered into list array
  begin
    puts "Place an item in the bag"
    list.push(gets.chomp)
    puts "and what type of item is it?"
    types.push(gets.chomp)
  end until count.to_i == list.length
  #create hashes starting here
    stash = Hash.new("all out dude")
  # puts "what type of stuff are you putting in the stash"
  #   var1 = gets.chomp
    second_hash = Hash.new
      second_hash["type"] = types
      second_hash["item"] = list
  stash.merge!(second_hash)
  puts "The length of this hash is  #{stash.length}"
  stash.each{|key, value| puts "#{value}, are #{key}s"}
puts "look for an item in the bag"
  var1 = gets.chomp
  if stash.has_value?(var1)
    puts "Its in the bag"
  else
    puts "its not here"
  end
end
  #begin program here
hash_supply
