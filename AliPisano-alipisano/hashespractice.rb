require 'pry'

apartment = { neighborhood: "Lower East Side", bedrooms: 2, floor: "fourth" }
 
apartment_2 = { neighborhood: "East Village", bedrooms: 3, floor: "second" }


#the length method displays the number of key value pairs in a hash
"My #{apartment} has #{apartment.length} key value pairs."

# .merge combines two hashes
apartment.merge(apartment_2)


# .merge! combines two hashes permenantly 
apartment.merge!(apartment_2)

# .keys displays the keys in a hash
apartment_2.keys

# .values displays the values in a hash
apartment_2.values


# .has_key? returns whether or not a hash contains a specified key
apartment.has_key?(:bedrooms)

# .has_value? returns whether or not a hash contains a specified value
apartment.has_value?("fourth")