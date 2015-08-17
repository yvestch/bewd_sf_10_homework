#use each method for hashes we used in class today
#(.length, .merge, .merge!, .keys, .values, .has_key?, .has_value?)
require 'pry'
movie01 = {title:"The Wizard of Oz", year:1939, reviews:"107", score:"99%"}
movie02 = {title:"The Third Man", year:1949, reviews:"76"}
movie03 = {title:"Citizen Kane", year:1941, reviews:"69", score:"100%"}
movie04 = {title:"All About Eve", year:1950, reviews:"63"}
movie05 = {title:"A Hard Day's Night", year:1964, reviews:"54", score:"87%"}
movies = [movie01,movie02,movie03,movie04,movie05]

def show_movies(list)
  list.each do |item|
    movie = item.values
    movie.each do |item|
      puts "#{item}"
    end
    if item.length == 4
      puts "This movie has a score"
    end
    if item.has_key?(:score) == true
      puts "The current score is #{item[:score]}"
    end
    if item.has_value?("100%") == true
      puts "This movie is excellent"
    end
    puts "--------------------"
  end
end

while true
  puts "Enter new movie"
  puts "Title:"
  title = gets.chomp
  puts "Year:"
  year = gets.chomp.to_i
  puts "Reviews:"
  reviews = gets.chomp
  puts "Score:"
  score = gets.chomp
  movie_listing = {title:title, year:year, reviews:reviews, score:score}
  movies << movie_listing
  show_movies(movies)
  puts "Add more? Yes or no."
  response = gets.chomp.downcase
  if response != "yes"
    break
  end
end
