#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)
  # - http://digg.com/api/news/popular.json (Homework)
#2 - Parse it using the JSON library
#3 - Find the stories based on techniques used in the code_along (max of 25 provided)
#4 - Create a new story hash out of each story with the following keys :title, :upvotes and :category
    #title, #category and #upvotes may not be the names use
#5 - Add each story to an array
#6 - Print each story from the array on your "Front Page"
#7 - BONUS ### create an 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns

require 'rest-client'
require 'pry'
require 'json'
require 'csv'

@stories_array= []
def connect_to_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end

def find_stories(response)
  stories = response['new']
  puts "****** Mashable has blessed us with #{stories.length} stories ********"
  return stories
end

def print_stories(stories)
  stories.each do |story|
  #  puts "Title: #{story['title']}"
    create_story_hash(story)
  end
end

def create_story_hash(story)
  story_hash = {title: story['title'],
    facebook_upvotes: story['shares']['facebook'],
    category: story['channel']
  }
  create_stories_array(story_hash)
end

def create_stories_array(story_hash)
  @stories_array.push(story_hash)
end


mashable_url = "http://mashable.com/stories.json"
mashable_json_response = connect_to_api(mashable_url)
stories = find_stories(mashable_json_response)
story_hash = print_stories(stories)



#1.  create new holder array, 2.iterate through @stories_array and 3.for each hash put the values in array
val_array = []
@stories_array.each do |obj|
  holder_array =[]
  obj.each do |key, value|
    holder_array.push(value)
  end
    val_array.push(holder_array)
end


CSV.open('mashable_top_stories.csv', 'a+') do |csv|
  val_array.each do |row|
    csv << row
  end
end
