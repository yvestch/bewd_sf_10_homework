#1 - Pull the json from the Mashable API via http://mashable.com/stories.json
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
require 'json'
require 'pry'
require 'csv'

def connect_to_api(url)
  #connect to API
  get_data = RestClient.get(url)
  #parse API response into ruby hash using JSON library
  JSON.parse(get_data)
end

def find_stories(response)
  #create an array of stories from parsed JSON
  stories = response["new"]
end

def print_stories(stories)
  front_page = []
  stories.each do |story|
    #pass each story from array into create_story_hash method; save results into new array of hashes
    front_page.push(create_story_hash(story))
  end
  #print title, category, shares for each story
  front_page.each do |story|
    #create new csv with read/write permissions
    CSV.open("mashable_get_it.csv", "a+") do |csv|
      #add row of title, cateogy, shares for each story to CSV
      csv << [story[:title], story[:category], story[:shares]]
      #print title, category, shares for each story
      puts "Title: #{story[:title]}, category: #{story[:category]}, shares: #{story[:shares]}"
    end
  end
end

def create_story_hash(story)
  #return title, cateogy, and number of shares for story hash
  story_hash = {:title => story["title"], :category => story["channel"], :shares => story["shares"]["total"]}
end

mashable_url = 'http://mashable.com/stories.json'
mashable_json_response = connect_to_api(mashable_url)
stories = find_stories(mashable_json_response)
print_stories(stories)
