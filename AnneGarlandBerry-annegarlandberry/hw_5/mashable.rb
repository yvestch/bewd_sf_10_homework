
require 'pry'  #debugging tool
require 'rest-client' #library that faciltates http requests
require 'json' #tranforms a string response into 'json'

def connect_to_api(url)
  response = RestClient.get(url)
  json_response = JSON.parse(response)
  find_stories(json_response)
end

def find_stories(response)
  stories = response["hot"]
  puts "Mashable has blessed us with #{stories.count} hot stories"
  print_stories(stories)
end

def print_stories(stories)
  stories.each do |story|
    story = create_story_hash(story)
    puts "Title: #{story[:title]}. Category: #{story[:category]}. Upvotes: #{story[:upvotes]}."
  end
end

def create_story_hash(story)
    {title: story["title"], upvotes: story["shares"]["total"],  category: story["channel"]}
end


mashable_url =  "http://mashable.com/stories.json"
connect_to_api(mashable_url)
