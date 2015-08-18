ford = {
  brand:"Ford",
  model:"Mustang",
  year:"1967",
  price: "$4",
  is_electric: false
}

gmc = {
  brand:"GMC",
  model:"truck",
  year:"1967",
  price: "$4",
  is_electric: false
}

delorean = {
  brand:"CMC",
  model:"delorean",
  year:"1987",
  price: "$4",
  is_electric: true
}


array = [ford, gmc, delorean]

array.each {|i| puts " The #{i[:model]} is environmental" if i[:is_electric] == true}
