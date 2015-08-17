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
require 'csv'

def connect_to_api(url)       #this is a starter kit, you need to revise
  response = RestClient.get(url)      #get info from website
  parsed = JSON.parse(response)       #turns info into a hash, and makes it readable
end

def find_stories(parsed)
  stories = parsed["hot"]
  puts "There are #{stories.count} 'hot' stories at mashable."
  return stories  #need to return this so that it can be used by other methods
end

def print_stories(stories)
  stories.each do |story|
    puts create_story_hash(story)
    #if you want the story content, I would add 'content: story["content"]["plain"]' to the new story method below
  end
end

def create_story_hash(story)
  new_story = {category: story["channel"], title: story["title"], upvotes: story["shares"]["total"]}
end




mashable_url = "http://mashable.com/stories.json"
mashable_json_response = connect_to_api(mashable_url)
stories = find_stories(mashable_json_response)
print_stories(stories)
