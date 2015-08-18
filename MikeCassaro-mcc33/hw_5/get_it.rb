#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)
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
  response = RestClient.get(url)
  #RestClient, being told to get the url passed as the argument.
  #Set equal to 'response', so the rest client executing the code is stored in the 'response' variable.
  JSON.parse(response)
  #JSON having parse method called and passed the 'response' variable,
  #so it will receive the reddit JSON and transform data into a more readable format that can be manipulated
end

def find_stories(response)
  stories = response["data"]["children"]
  #'response' is a hash, but stories is a new array set equal to the 'children' array from reddit JSON
  puts "Reddit has blessed us with #{stories.count} stories"
  #returns '.count' method on the response array
  return stories
end

def print_stories(stories)
  stories.each do |story|
      create_story_hash(story["data"])
    #code block iterates through what is passed and executes the 'create_story_hash' method
    #which creates an array of hashes with data from reddit JSON
  end
end

def create_story_hash(story)
  new_story = {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
  puts new_story
end
#Creates a new hash with category, title, and upvote keys.

reddit_url = "http://www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
#variable set equal to method being called on the reddit url
stories = find_stories(reddit_json_response)
#'find_stories' method being called on the above variable-
#which is set equal to the parsed reddit json.
array = print_stories(stories)
#calling the print_stories method
array

def find_mashable_stories(response) #Here
  stories = []
  stories.push(response["hot"], response["new"], response["rising"])
  puts "Mashable has blessed us with #{stories.count} stories"
  return stories
end

def print_mashable_stories(stories)
  stories.each do |story|
      create_mashable_story_hash(story)
  end
end

def create_mashable_story_hash(story)
  new_story = {category: story["channel".to_i], title: story["title".to_i], upvotes: story["shares".to_i]}
  puts new_story
end

mashable_url = "http://mashable.com/stories.json"
mashable_json_response = connect_to_api(mashable_url)
mashable_stories = find_mashable_stories(mashable_json_response)
mashable_array = print_mashable_stories(mashable_stories)
mashable_array
#The to_i method fixes my TypeError ' []: no implicit conversion of String into Integer '
#Still have the problem that rather than a concise hash being printed, a wall of text is returned.
