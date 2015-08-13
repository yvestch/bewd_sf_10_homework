loves = {"boyfriend" => "Abe", "city" => "San Francisco"}
loves.each {|key, value| puts "#{key} is #{value}"}
##defines the key and its relationship to the value

loves.each_value{|value| puts "#{value}"}
## takes the value out of the hash and isolates it

loves.empty?
 ## is there a value in this method? Boolean

 loves.invert.each{|key, value| puts "#{key} is #{value}"} #flips key to value and value to key
 loves.delete_if{|key, value| key >= "city"} #deletes the key, value pair if the key is equal to the listed value
 loves.to_s #turns the contents of the hash to a string
