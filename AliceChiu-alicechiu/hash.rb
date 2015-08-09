require 'pry'

# .length counts the total key-value pairs in the hash

dinner = {entree: "lamb kabobs and roasted veggies", appetizers: "fried potato cheese balls",
          bread: "injera", drink: " Voss water" , dessert: "ice-cream Belgian waffles"}

  if dinner.length > 2
    puts "Dinner is delicious!"
  else
    puts "Blah, my taste buds are not feeling it! "
  end

# .merge method take the second hash and combines it with the first one. Any key that is duplicate will overwrite the first hash.

breakfast = {"drink"=> 'coffee', "opt1"=> 'french toast', "opt2"=> 'salmon eggs benedict', "opt3"=> 'bacon waffles'}
lunch = {"opt1"=> 'garlic fries', "opt2"=> 'pork belly sandwich', "opt3"=> 'crab cakes', "opt4"=> 'chicken masala'}

  if breakfast == "Pumpkin spice pancakes"
    puts "Anything but pancakes and breakfast foods, YUCK!!!"
  else
    puts breakfast.merge(lunch)
  end

#.merge! method adds the contents of second hash (snacks_2) to the first hash (snacks_1).
#If no block is specified, entries with duplicate keys are overwritten with the values from the second hash.

snacks_1 = {"s1" => 'buttered pretzels', "s2" => 'tapioca pudding', "s3" => 'kobe beef sliders' }
snacks_2 = {"s1" => 'siracha popcorn', "s2" => 'cornbread', "s3" => 'bbq chips', "s4" => 'cheesy corn dogs',
            "s5" => 'dino nuggets'}

  if snacks_1.length >= 4
    puts "I want more choices!"
  else
    puts snacks_2.merge!(snacks_1) { |key, v2, v1| v2}
  end

#.keys method retrieves the keys that are in the hash.
k = {"car1" => 'Rolls Royce', "car2" => 'Ashton Martin', "car3" => 'Escalade', "car4" => 'Audi'}
puts k.keys

#.values method retrieves the values in the hash that has a key assigned to it
k = {"car1" => 'Rolls Royce', "car2" => 'Ashton Martin', "car3" => 'Escalade', "car4" => 'Audi'}
puts k.values


#.has_key? method asks if the hash has a certain key. In the case below, it is asking if "car2" exists.
k = {"car1" => 'Rolls Royce', "car2" => 'Ashton Martin', "car3" => 'Escalade', "car4" => 'Audi'}
puts k.has_key?("car2")


#.has_value? method asks if the hash has a certain value. In the case below, it is asking if "Jaguar" exists as a value in the hash.
k = {"car1" => 'Rolls Royce', "car2" => 'Ashton Martin', "car3" => 'Escalade', "car4" => 'Jaguar'}
  if "k".start_with?("C")
  puts "Looks like we will be taking the Cadillac for a joy-ride!"
  else k.has_value?("Jaguar")
    puts "Jaguar? Let's race on the U.S. Route 101."
  end

binding.pry
