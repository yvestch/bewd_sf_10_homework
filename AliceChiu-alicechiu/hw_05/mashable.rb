require 'pry'
require 'rest-client'
require 'json'

#Connect to Mashable API and parse JSON file
def connect_to_api(url)
  response = RestClient.get(url)
  json_response = JSON.parse(response)
  find_stories(json_response)
end

#To retrieve stories from the JSON file from the "hot" section (or key)
def find_stories(json_response)
  stories = json_response["hot"] # one of the keys from the hash ; json_response.keys
  print_stories(stories)
end

#Go through each story and list them out according to the method below
def print_stories(stories)
  stories.each do |story|
    puts create_story_hash(story)
  end
end

#Get certain data from the "hot" section and print them out in the above method
def create_story_hash(story)
  {title: story["title"], author: story["author"], category: story["channel"],
   upvotes: story["shares"]["total"]}
end

#Call the methods
mashable_url = "http://mashable.com/stories.json"
connect_to_api(mashable_url)
