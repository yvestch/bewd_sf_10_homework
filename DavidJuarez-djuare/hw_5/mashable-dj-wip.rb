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

def connect_to_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end

def find_stories(response)
  new_stories = response["new"]
  new_rising = response["rising"]
  new_hot = response["hot"]
  puts "*** Mashable (new) has blessed us with #{new_stories.count} ***"
  puts "*** Mashable (rising) has blessed us with #{new_rising.count} ***"
  puts "*** Mashable (hot) has blessed us with #{new_hot.count} ***"
  return [new_stories, new_rising, new_hot]
  #return new_stories
end

def print_stories(stories)
  stories.each do |story|
    create_story_hash(story)
  end
end


# Rising

def print_rising(rising_stories)
  rising_stories.each do |story|
    create_rising_hash(story)
  end
end

# Rising

# hot
def print_hot(hot_stories)
  hot_stories.each do |story|
    create_hot_hash(story)
  end
end
# hot

def create_story_hash(story)
  new_story = {category: story["channel_label"], title: story["title"], upvotes: story["shares"]["total"]}
  puts new_story
end

# Rising
def create_rising_hash(story)
  new_rising = {category: story["channel_label"], title: story["title"], upvotes: story["shares"]["total"]}
  puts new_rising
end
# Rising

# hot
def create_rising_hash(story)
  new_hot = {category: story["channel_label"], title: story["title"], upvotes: story["shares"]["total"]}
  puts new_hot
end
# hot

mashable_url = "http://mashable.com/stories.json" 
mashable_json_response = connect_to_api(mashable_url)

new_stories = find_stories(mashable_json_response)
rising_stories = find_stories(mashable_json_response)
hot_stories = find_stories(mashable_json_response)

print_stories(new_stories)
print_rising(rising_stories)
print_hot(hot_stories)



