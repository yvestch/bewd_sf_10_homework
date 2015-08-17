#Morgan's HW version
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
require 'csv'

def connect_to_api(url)
  get_data = RestClient.get(url) #assume the output is from a Get request, so just need to pass in an endpoint
  JSON.parse(get_data)
end

##modify or duplicate to take Mashable
def find_reddit_stories(get_data) # can call the argument anything, this is just good etiquette to pass the variable name from one method to another
  stories = get_data['data']['children'] #returns the top 25 stories in an Array
  puts "We've been blessed with #{stories.length} stories!"
  return stories
end

#QUESTION: I thought about putting an 'if' switch in this method to let an additional argument determine whether the source was reddit or mashable but decided two methods was simpler. Seems inefficient given there's a lot of repeat code but not sure how to deal with the fact that stories are stored at different hash/array 'addresses' in reddit vs. mashable, thoughts?
def find_mashable_stories(get_data) # can call the argument anything, this is just good etiquette to pass the variable name from one method to another
  stories = get_data['new'] #returns the top 10 new stories in an Array
  puts "We've been blessed with #{stories.length} stories!"
  #binding.pry
  return stories
end


##modify or duplicate to take Mashable
def print_reddit_stories(stories)
  stories.each do |story|
    #text = story['data']['selftext']
    #title = story['data']['title']
    #category = story['data']['subreddit']
    #upvotes = story['data']['ups']
    #puts "Title: #{title}"
    #puts "Category: #{category}"
    #puts "Upvotes: #{upvotes}"
    create_story_hash(story)
  end
end

def print_mashable_stories(stories)
  stories.each do |story|
    create_mashable_story_hash(story)
  end
end


def create_story_hash(story)
  story_hash = {Title: story['data']['title'], Category: story['data']['subreddit'], Upvotes: story['data']['ups']}
  push_story_array(story_hash)
end

def create_mashable_story_hash(story)
  story_hash = {Title: story['title'], Category: story['channel'], Upvotes: story['shares']}
  push_story_array(story_hash)
end



def push_story_array(story_hash)
  story_array =  Array.new
  story_array.push(story_hash)
  #binding.pry
  puts "Title: #{story_array[0][:Title]} \nCategory: #{story_array[0][:Category]} \nUpvotes: #{story_array[0][:Upvotes]} \n\n*****\n\n"
  write_to_CSV(story_array)
  #return story_array
end

def write_to_CSV(story_array)
  CSV.open("./story_csv.csv", "a+") do |csv|
    csv << [story_array[0][:Title],story_array[0][:Category],story_array[0][:Upvotes]] #Breaks down shares by social channel for Mashable FYI
  end
end


reddit_url = "http://www.reddit.com/.json"
mashable_url = "http://mashable.com/stories.json"

#reddit_json_responses = connect_to_api(reddit_url)
#reddit_stories  = find_reddit_stories(reddit_json_responses)
#print_reddit_stories(reddit_stories)

mashable_json_responses = connect_to_api(mashable_url)
mashable_stories  = find_mashable_stories(mashable_json_responses)
print_mashable_stories(mashable_stories)
