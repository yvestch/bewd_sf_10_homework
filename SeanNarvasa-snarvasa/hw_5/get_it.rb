#Sean Narvasa // HW #5 // GET IT

require 'rest-client'
require 'pry'
require 'json'

def connect_to_api(url)                                   #method to get data from the reddit endpoint and store it into a JSON object
  response = RestClient.get(url)                          #Use RestClient. Use the GET method. Pass it the url. Assigns it to response
  JSON.parse(response)                                    #uses the JSON library to parse the response
end

def find_stories(response)                                #method to parse the response & store it in an array
  stories_array = []                                      #creates the empty array to store the stories
  stories = response["data"]["children"]                  #takes the parsed response in the data and children keys
  stories.each do |story|                                 #for each story in the response, do:
    new_story_hash = {category: story["data"]["subreddit"], title: story["data"]["title"], upvotes: story["data"]["ups"]}       #defines a new hash for :category, :title, and :upvotes
    stories_array.push(new_story_hash)                                                                                          #push the story from the hash into the stories_array, above
  end                                                     #end loop
  return stories_array                                    #returns the stories_array
end

def print_stories(stories)                                #method to print the stories onto the screen
  count = 1                                               #sets the count to 1
  stories.each do |story|                                 #for each story, do the following
    puts "#{count}. #{story[:title]} | #{story[:category]} | Upvotes: #{story[:upvotes]}\n"                                     #print the story number, title, category, and upvotes onto a single line
    count += 1                                                                                                                  #increment the line count by one
  end
end

#RUN IT
reddit_url = "http://www.reddit.com/.json"                #assigns the endpoint to reddit_url variable
reddit_json_response = connect_to_api(reddit_url)         #passes reddit_url to the connect_to_api method and assigns it to the reddit_json_response variable
stories = find_stories(reddit_json_response)              #passes reddit_json_response to the find_stories method and assigns the result it to the stories variable
print_stories(stories)                                    #prints the stories to the screen
