require 'pry'


def hash_supply()
  list = []

  puts "How many things did you bring today??"
  count = gets.chomp

  begin
    list.push(gets.chomp)
  end until count.to_i == list.length




  stash = Hash.new("all out dude")
  puts "what type of stuff are you putting in the stash"
  var1 = gets.chomp
  puts "wow cool, what exactly is it?"
  var2 = gets.chomp
  second_hash = Hash.new
    second_hash["type"] = var1
    second_hash["stuff"] = list

    # stash.merge!(:uppers, "#{var1}") i was trying to insert a KVP here
  stash.merge!(second_hash)

    # stash.merge!(:downers, var2) i was trying to insert a new KVP here
end


puts hash_supply
