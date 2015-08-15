lion = {
  hair: true,
  color: 'orange',
  num_legs: 4,
  nickname: "King of the Jungle",
  sound: "roar"
}

lion_more = {
  lives_in: "Africa",
  groups: true
}

puts lion.length

lion_final = lion.merge(lion_more)
puts lion_final

lion.merge!(lion_more)
puts lion

puts lion.keys

puts lion.has_key?(:sound)

puts lion.has_value?('Africa')
