require 'rest-client'
require 'pry'
require 'json'

def connect_to_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end

def find_stories(response)  
  stories = response["hot"]
  puts "****** There are #{stories.count} HOT stories on Mashable today ******" 
  puts
  return stories  
end

def print_stories(stories)  
  stories.each do |story| 
  create_story_hash(story) 
  end
end

def create_story_hash(story)
  new_story = {category: story["channel"], title: story["title"], shares: story["shares"]["total"], link: story["link"]} 
  front_page(new_story)
end

def front_page(new_story)
  frontpage = []
  frontpage << new_story
  puts "Headlines from #{new_story[:category]}:"
  puts "#{new_story[:title]}...This story has been shared #{new_story[:shares]} times. For more information go to #{new_story[:link]}}"
  puts
end

  
mashable_url = "http://www.mashable.com/stories.json"

mashable_response = connect_to_api(mashable_url)
stories = find_stories(mashable_response)
print_stories(stories)
#front_page(new_story) Can't run independently of create_story_hash so I guess that makes it less useful as a method
