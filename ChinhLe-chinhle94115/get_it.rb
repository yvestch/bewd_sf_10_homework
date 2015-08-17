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

def connect_to_api(url)       #this is a starter kit, you need to revise
  response = RestClient.get(url)      #get info from website
  parsed = JSON.parse(response)       #turns info into a hash, and makes it readable
end

def find_stories(response)
  stories = response["data"]["children"]
  puts "The internet has blessed us with #{stories.count} stories."
  return stories  #need to return this so that it can be used by other methods
end

def print_stories(stories)
  stories.each do |story|
    puts create_story_hash(story["data"]) #by having (story["data"]), now has "data" root
  end
end

def create_story_hash(story)
  new_story = {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
  #["data"] not needed because we made it a root above
end


reddit_url = "http://www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
stories = find_stories(reddit_json_response)
print_stories(stories)
