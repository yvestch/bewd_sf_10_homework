#On your own, use each method for hashes we used in class today (.length, .merge, .merge!, .keys, .values, .has_key?, .has_value?

top_dev_skills = {"Ruby on Rails" => "$109,460", "Objective C" => "$108,225", "Python" => "$100,717","Java" => "$94,908", "C++" => "$93,502", "JavaScript" => "$91,461", "C" => "90,134", "SQL" => "$85,511"}

other_dev_skills = {"R" => "90,055", "Visual Basic" => "$85,962", "PERL" => "$82,513"}

puts top_dev_skills
puts other_dev_skills

puts top_dev_skills.length

puts top_dev_skills.merge(other_dev_skills)
puts top_dev_skills
puts top_dev_skills.merge!(other_dev_skills)

puts top_dev_skills.length

p top_dev_skills.keys

p top_dev_skills.values

puts top_dev_skills.has_key?("Ruby")

puts top_dev_skills.has_value?("250,000")

top_dev_skills.each do |language, salary|
  puts "A developer skilled in #{language} averages a salary of #{salary} per year!"
end

p top_dev_skills.to_a
