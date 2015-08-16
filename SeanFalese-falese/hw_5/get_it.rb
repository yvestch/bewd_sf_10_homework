#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)
  # - http://digg.com/api/news/popular.json (Homework)
#2 - Parse it using the JSON library
#3 - Find the stories based on techniques used in the code_along (max of 25 provided)
#4 - Create a new story hash out of each story with the following keys :title, :upvotes and :category
    #title, #category and #geupvotes may not be the names use
#5 - Add each story to an array
#6 - Print each story from the array on your "Front Page"
#7 - BONUS ### create an 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns

#i'm going to want to include gem launchy to launch default web browser



require 'rest-client'
require 'pry'
require 'json'
# reuqire launchy



def connect_to_api(reddit_url)
  get_data = RestClient.get(reddit_url)
  parse_to_json(get_data)
end

def parse_to_json(get_data)
  h1 = JSON.parse(get_data)
  find_stories(h1)

end

def find_stories(h1)
  stories = h1["data"]["children"]
  display_titles(stories)
end




def display_titles(stories)
  stories.each do |story|
  # puts "#{story["data"]["title"]}
  #       #{story["data"]["url"]}"
        create_story_hash(story["data"])
  end
end

def create_story_hash(story)
  h3 = {title: story["title"], url: story["url"]}
 puts h3
  front_page(h3)
end

def front_page(h3)


end


reddit_url = "http://www.reddit.com/.json"
connect_to_api(reddit_url)
# find_stories(h1)
