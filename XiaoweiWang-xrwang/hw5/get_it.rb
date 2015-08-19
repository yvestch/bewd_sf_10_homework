#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)
  # - http://digg.com/api/news/popular.json (Homework)
  # - http://www.reddit.com/.json
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
  JSON.parse(response)
end

def finding_stories(response)
  stories = response["data"]["children"]
  puts "The Reddit API has given us #{stories.count} stories"
  return stories
end

def print_stories(stories)
  stories.each do |story|
      title = story["data"]["title"]
      category = story["data"]["subreddit"]
      upvotes = story["data"]["score"]
    # hash[Title,Category,Upvotes] = title, category, upvotes
    create_story_hash(story["data"])
  end
end

def create_story_hash(story)
    new_story = {title: story["title"], category:story["subreddit"], upvotes: story["score"]}

    #an attempt to do the CSV output....will return to this later, it's only outputting the first value of each story, need to loop thru...
    CSV.open("api_learning_5.csv", "w") do |csv|
      csv << [title: story["title"], category:story["subreddit"], upvotes: story["score"]]
    end
end

def create_story_array
end


reddit_url = "http://www.reddit.com/.json"
connect_to_api(reddit_url)
reddit_json_response = connect_to_api(reddit_url)
stories = finding_stories(reddit_json_response)
print_stories(stories)
