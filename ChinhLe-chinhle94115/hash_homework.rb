nfc_east = {new_york: "Giants", washington: "Redskins", philadelphia: "Eagles", dallas: "CowboysL"}
nfc_west = {san_francisco: "49'ers", seattle: "Seahawks", st_louis: "Rams", arizona: "Cardinals"}
nfc_south = {new_orleans: "Saints", carolina: "Panthers", atlanta: "Falcons", tampa_bay: "Bucaneers"}
nfc_north = {green_bay: "Packers", detroit: "Lions", minnesota: "Vikings", chicago: "Bears"}
nfc = nfc_east.merge(nfc_west)
nfc2 = nfc_north.merge(nfc_south)
nfc = nfc.merge!(nfc2)

puts "The NFC East has #{nfc_east.length} teams."
puts "The teams that make up the NFC conference are #{nfc}."
puts "The cities that have teams in the NFC are #{nfc.keys}."
puts "The names of the teams in the NFC are #{nfc.values}."
puts "Is Green Bay in the NFC West? => #{nfc_west.has_key?("green_bay")}"
puts "Do the 49'ers play in the NFC West? => #{nfc_west.has_value?("49'ers")}"
