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

def connect_to_api(url)
  response = RestClient.get(url) #digs into the url
  JSON.parse(response) #organizes
end

def find_stories(response) #looks in the response and counts
  stories = response["data"]["children"]
  puts "****Reddit has blessed us with #{stories.count} stories.****"
  return stories
end

def print_stories(stories) #prints the story, in our terms with "Title"
  stories.each do |story| #iterates
    create_story_hash(story["data"]) #so you don't have to repeat yourself! goes deeper into story
  end
end

def create_story_hash(story) #puts the stories into a hash of our own, using the data of the API
  new_story = {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
  puts new_story #but you can also run below with a method?
end

story_array = []
story_array << {new_story}


reddit_url = "http://www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
stories = find_stories(reddit_json_response)
print_stories(stories)
