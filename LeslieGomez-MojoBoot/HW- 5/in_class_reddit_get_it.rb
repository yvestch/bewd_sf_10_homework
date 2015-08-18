#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)
  # - http://digg.com/api/news/popular.json (Homework)
  # - http://hackernews.com (later)

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
  JSON.parse(response)
end

def find_stories(response)  #not the same response as the one in the method above
  stories = response["data"]["children"]
  puts "****** Reddit has blessed us with #{stories.count} stories ******"
  return stories  #can't use implied return here, have to use the word 'return'
end

def print_stories(stories)  #Array of stories - not the same stories as in the method above
  stories.each do |story| #pull up each story from stories
  create_story_hash(story["data"]) #calling method below
  end
end

def create_story_hash(story)
  new_story = {category: story["subreddit"], title: story["title"], upvotes: story["ups"]} #puts the info we want into new hash
  puts new_story
end
  # puts story["data"]["title"] #this will return story title
  # puts story["data"]["subreddit"] #this will return story subreddit
  # puts story["data"]["ups"] #this will retrun story thumbs up/likes

# story = {title: story["title"], category: story["subreddit"], upvotes: story["ups"]}
# puts "Title: #{story[:title]}. Category: #{story[:category]}. Upvotes: #{story[:upvotes]}"



# story["data"].has_key?("title")
# story["data"].has_key?("category")
# story["data"].has_key?("upvotes")
# story["data"].has_key?("likes")
# story["data"].has_key?("score")
# story["data"].has_key?("subreddit")
#
# story["data"]["score"]
# => 7538



reddit_url = "http://www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
stories = find_stories(reddit_json_response)
print_stories(stories)
