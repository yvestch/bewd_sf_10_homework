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
    second_hash = Hash.new
      second_hash["type"] = types
      second_hash["item"] = list
  stash.merge!(second_hash)
    puts "The length of this hash is  #{stash.length}"
    puts "here are the keys: #{stash.keys}"
    puts "here are the values: #{stash.values}"
  stash.each{|key, value| puts "#{value}, are #{key}s"}

    puts "Do you want something from the bag?"
  var1 = gets.chomp.to_s
  if stash.values_at('item').to_a.pop.include?(var1) == true
    puts "Have an #{var1}!"
  else
    puts "its not here"

  end
  puts "Let's check some keys"
var2 = gets.chomp
  if stash.has_key?(var2) == true
    puts "yep thats in there"
  else
    puts "nope, not found"
  puts "Let's check some values"

  end
end
  #begin program here
hash_supply
