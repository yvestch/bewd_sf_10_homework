place = {:name=>"boston",
  :long=>"38",
  :lat=>"42",
 :state=>"MA",
 :status=>"awesome",
 :motto=>"go pats!",
 :ethos=>"friendliness",
 :character=>"warmth"}

 place2 = {:name=>"new york",
 :foods=>"lots",
 :rent=>"expensive"}

place_array = [place, place2]

place.each do |key,value|
  puts "Place's #{key} is #{value}"
end

def place_mottos(*place_array)
  place_array.flatten.each do |place|
    if place.has_key?(:motto)
      puts place[:motto]
    else
      puts "no motto here"
    end
  end
end



# def place_mottos(*alltheplaces)
#   place_mottos_from_array(alltheplaces)
# end

place_mottos(place, place2, {name: "detroit", motto: "great place to live"})

# place_mottos_from_array(place_array)
