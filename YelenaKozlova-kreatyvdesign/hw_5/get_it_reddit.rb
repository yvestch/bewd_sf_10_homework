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

def connect_to_api(url) #get request api
  response = RestClient.get(url)
  JSON.parse(response)
end

def find_stories(response) #select array of 25 recent stories
  stories = response["data"]["children"]
  puts "\nReddit has blessed us with #{stories.count} stories\n\n"
  return stories
end

def print_stories(list) #print out array list of modified hash values strings
  list.each do |story|
    puts "------------------------\n\n#{story[:title]}\nfiled under: #{story[:category]}\n#{story[:upvotes]} upvotes\n\n"
  end
end

#
def create_story_hash(story) #create new hash with story category, title, and upvotes info
  {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
end


def create_story_array(stories) #create a new array based on the original array, but with new hash values
  stories.map { |story| create_story_hash(story["data"]) }
end


reddit_url = "http://www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
stories = find_stories(reddit_json_response)
story_list = create_story_array(stories)
print_stories(story_list)
