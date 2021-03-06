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
  JSON.parse(response)
end

 def find_stories(mashable_json_response)
  stories = mashable_json_response["new"]
  puts "***Mashable has blessed us with stories***"
  return stories #by default it will return the last line, but if you
     #don't want it to return the last line, then you add return at the end
  end

# #
  def print_stories(stories)
   stories.each do |story| #we give it pipes to focus on & each story is a hash
     story_hash = create_story_hash(story)
     puts "Title: #{story_hash[:title]} Author: #{story_hash[:author]} Upvotes: #{story_hash[:upvotes]}"
   end
  end
# #
 def create_story_hash(story)
   story_hash = {category: story["id"], title: story["title"], author: story["author"], upvotes: story["shares"]["total"]}
   #puts story_hash
   story_hash
 #  we used the following three when we were trying to figure out what's  going on
 #  puts "#{story["title"]}" #provides the title
 #  puts "#{story["subreddit"]}" #provides the subreddit
 #  puts "#{story["ups"]}" #provides the ups
 end
# #
# #
  mashable_url = "http://mashable.com/stories.json"
  mashable_json_response = connect_to_api(mashable_url)
  stories = find_stories(mashable_json_response)
  print_stories(stories)
