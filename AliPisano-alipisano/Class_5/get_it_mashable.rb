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

def connect_to_api(url) #connect to the API, pass in endpoint
  response = RestClient.get(url) #use a get request, give it the URL
  JSON.parse(response) #parse with JSON
end

def find_stories(response)
	stories = response["data"]["children"] #I'm getting an error with my terminal- I'm not able to parse through the data to find the relevant strings for Mashable
	puts "*********Mashable has blessed us with #{stories.count} stories**********"
	return stories
end

def print_stories(stories)
	stories.each do |story|
		create_story_hash(story["data"]) #Again here, I would change "data" if I were able to look through the data in terminal
	end
end

def create_story_hash(story)
	new_story = {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
	puts new_story
end   	


mashable_url = "http://mashable.com/stories.json"
mashable_json_response = connect_to_api(mashable_url)
stories = find_stories(mashable_json_response)
print_stories(stories)