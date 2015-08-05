name = "mike"

puts name
reverse_name = ""

name.each_char do |char|
  reverse_name.prepend(char)
end

puts reverse_name
