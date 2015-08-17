#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)
  # - hackernews
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
  response = RestClient.get(url)
  JSON.parse(response) #python need to type response but ruby does not need! just returns whatever on last line!
end

def find_stories(response)
  stories = response["data"]["children"]
  puts "Reddit has blessed us with #{stories.count} stories!!! "
  return stories
end

def print_stories(stories)
  story_array = []
  stories.each do |story|
    story_hash = create_story_hash(story)
    story_array.push(story_hash)
  end
  puts "#{story_array}"
  return story_array
end

def create_story_hash(story)
  new_story = {title: story["data"]["title"], upvotes: story["data"]["ups"], category: story["data"]["subreddit"]}
  return new_story
end

def to_csv(stories)
  CSV.open("reddit.csv", "w") do |csv|
    csv << ["Title", "Upvotes", "Category"]
    stories.each do |row|
      csv << row.values
    end
  end
end

reddit_url = "www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
stories = find_stories(reddit_json_response)
story_array = print_stories(stories)
to_csv(story_array)
