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

def find_stories(response)
  stories = response["data"]["children"]
<<<<<<< HEAD
  puts "************The Reddit has blessed us with #{stories.count}
  stories ***********"
=======
  puts "*******Reddit has blessed us with #{stories.count} stories *******"
>>>>>>> 43d933dfc339dccb02a330db173fa830015e4326
  return stories
end

def print_stories(stories)
  stories.each do |story|
    create_story_hash(story["data"])
<<<<<<< HEAD
  #puts "Title: #{taco["data"]["title"]}"
end
end

def create_story_hash(story)


  new_story = {title: story["title"], category: story["subreddit"], upvotes: story["ups"]}
  puts new_story

  puts "Title: #{story}["title"]"
  stories = find_stories(reddit_json_response)
  #trying to make an array out of hashes
  #we need to get into the title
  stories.each do |lead|
  puts "#{story["data"]["title"]}"
  puts "#{story["data"]["subreddit"]}"
  puts "#{story["data"]["ups"]}"

    lead =

end



# def connect_to_api(url)
#   get_data = RestClient.get(url)
#   JSON.parse(get_data)
# end
#
 reddit_url = "http://www.reddit.com/.json"
 reddit_json_response = connect_to_api(reddit_url)
 stories = find_stories(reddit_json_response)

 print_stories(stories)
=======
  end
end

def create_story_hash(story)
  {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
end

reddit_url ="http://www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
stories = find_stories(reddit_json_response)
print_stories(stories)





#####
>>>>>>> 43d933dfc339dccb02a330db173fa830015e4326
