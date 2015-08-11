#use each method for hashes we used in class-length, merge, merge!
#keys, values, has_key, has_value


require 'pry'
#create array
book_names = ["A Thousand Splendid Suns", "The Kite Runner", "The Death of a Salesman", "Switch: How to Change Things When Things are Hard"]

#determine number of books
puts "I have #{book_names.size} books in my library"
puts book_names

#add/merge another book
book = "Cat in the Hat"
book_names.push(book)
puts "I just purchased #{book} to my library"
puts book_names
puts "I now have #{book_names.size} in my library"

#remove a book
puts "I just gave #{book_names.shift} to my friend"
puts "I now have #{book_names.size} in my library"

#permanently add another book to my library
book2 = "Off to be a Wizard"
book_names.push(book2)
puts "I enjoyed reading #{book2} so I have purchased it for my library"

#Creating a Hash
books_directory1 = hash.new
books_directory1 = {name: "A Thousand Splendid Suns", author: "Khaled Hosseini", year: 2008, price: 8.99}

#creating 2nd hash
books_directory2 = {}
books_directory2 = {name: "Bloom: Finding Beauty in the Unexpected-A Memoir", author: "Kelle Hamptom", year: 2012, price: 11.99}

#merge the two hashes books and books2 - I don't know how without using numbers?
total_directory = books_directory1.merge(books_directory2)

#merge the two hashes books and books2 permanently (now directory1 is directory2)
total_directory = books_directory1.merge!(books_directory2)

puts "How many keys are in the first books directory"
puts "There are #{books_directory1.length} key identifiers in my book directory"

#display values
puts "Here is the information regarding what's in the directory now - #{total_directory.values}"

#display values associated with keys
puts "The price of the book is #{total_directory.values_at(:price)}"

#determining if hash has key
puts "Does the directory provide key by author?"
books_directory2.has_key?(:author)

#determing if hash has value
puts "Does my library currently have A Thousand Splendid Suns?"
books_directory2.has_value?("A Thousand Splendid Suns")
puts "What about Bloom: Finding Beauty in the Unexpected-A Memoir?"
books_directory2.has_value?("Bloom: Finding Beauty in the Unexpected-A Memoir")

books_directory2.at(:author)
books_directory2.key("Bloom: Finding Beauty in the Unexpected-A Memoir")






#determining
