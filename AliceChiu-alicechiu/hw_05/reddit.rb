require 'pry'
require 'rest-client'
require 'json'

#Connect to Reddit's API then parse the JSON file
def connect_to_api(url)
  response = RestClient.get(url)
  json_response = JSON.parse(response)
  find_stories(json_response)
end

#To retrieve stories that are in data and children hashes from the JSON file
def find_stories(json_response)
  stories = json_response["data"]["children"]
  print_stories(stories)
  return stories
end

#Method to go through each story and print them out according to the keys
#that were extracted from the "create_new_stories" method.
def print_stories(stories)
  stories.each do |story|
    puts create_new_stories(story)
  end
end

#Extract the keys we want from JSON file and display them in the above method
def create_new_stories(story)
  # story = {category: story["subreddit"], upvotes: story["ups"],
  #   author: story["author"], title: story["title"]}
  {title: story["data"]["title"], upvotes: story["data"]["ups"],
      category: story["data"]["subreddit"]}
end

#Methods being called
url = "http://www.reddit.com/.json"
connect_to_api(url)
