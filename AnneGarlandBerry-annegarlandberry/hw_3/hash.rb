
  favorite_things = {"cat"=>"Halibut & Flounder", "person"=> "Abe", "color" => "blue", "word" => "penumbra", "phrase" => "lest we remain isolate and unbloomed"}
  what_i_missed = {"cat" => "Halibut & Flounder", "person"=> "Abe", "weather"=> "thunder", "place"=> "Del Ray"}
  poem = {"eliot" => "in a minute, there is time for decisions and revisions which a minute can reverse"}
  candidates = {"Clinton" => "Democrat", "Trump" => "Republican"}
  parties = {"Democrat" => "liberal", "Republican" => "conservative"}

i =2
while i > 0
  puts "I think these decisions might be ""#{favorite_things.has_key?("orange")}" #returns true or false based on if key exists
   i -= 1
 end

  puts candidates.merge(parties) #second hash combined w/ first hash, with duplicate values being overwritten from first hash
  puts parties.merge!(candidates) #second hash is added to first hash, with entries from duplicate values in first hash being overwritten with second hash
  puts poem.values #lists all values in this hash
  puts what_i_missed.length #shows number of key/value pairs in hash
  puts candidates.has_value?("Democrat") #returns true or false based on if value exists in hash
  puts "I know #{candidates.keys} are not all the same, but then again, #{poem.values}" #lists all keys in this hash
