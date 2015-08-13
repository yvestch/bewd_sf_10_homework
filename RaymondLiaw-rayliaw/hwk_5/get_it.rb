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

# Get request to a URL and parsed into JSON
def connect_to_api(url)
  get_data = RestClient.get(url)
  JSON.parse(get_data)
end

# Parses Reddit JSON to pull out story's title, category, upvotes returned in a new array
def parse_json(json)
  story_array = [ ]
  children = json["data"]["children"]

  # Loops through children array and pulls out values from an embedded hash for keys
  children.each do |child|
    # Create a new hash for key-value pairs: title, upvotes, category
    story_hash = {
      title: child["data"]["title"],
      upvotes: child["data"]["ups"],
      category: child["data"]["subreddit"]
    }
    # Saves to a new story_array
    story_array.push(story_hash)
  end

  # Return story_array
  return story_array
end

# Prints out Reddit stories
def print_stories(story)
  count = 1

  puts "*** REDDIT FRONT PAGE ***"
  # Iterates through an array printing out each story to a new line: [Category] Title (Upvotes)
  story.each do |item|
    puts "#{count}. [#{item[:category]}] #{item[:title]} (+#{item[:upvotes]})\n"
    count += 1
  end
end

# Takes an array and converts it to a CSV using 3 columns: title, category, header
def save_to_csv(arr)
  # Writes to 'reddit.csv'
  CSV.open("reddit.csv", "wb") do |csv|
    # Create headers
    csv << [ "Title", "Category", "Upvotes" ]
    # Create rows
    arr.each do |item|
      csv << [ item[:title], item[:category], item[:upvotes] ]
    end
  end

  puts "Saved to 'reddit.csv'."
end

# Initialize
reddit_url = "http://www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
reddit_stories = parse_json(reddit_json_response)
print_stories(reddit_stories)
save_to_csv(reddit_stories)
