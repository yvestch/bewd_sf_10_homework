#Sean Narvasa // HW #5 // MASHABLE

require 'rest-client'
require 'pry'
require 'json'

def connect_to_api(url)                                           #method to get data from the mashable endpoint and store it into a JSON object
  response = RestClient.get(url)                                  #Use RestClient. Use the GET method. Pass it the url. Assigns it to response
  JSON.parse(response)
  binding.pry                                         #uses the JSON library to parse the response
end

def story_hash(array)
  stories_array = []                                              #creates the empty array to store the stories
  array.each do |story|                                           #for each item in array, do:
    story_hash = {title: story["title"], category: story["channel"], upvotes: story["shares"]["total"]}       #creates a new hash and keys :category, :title, and :upvotes
    stories_array.push(story_hash)                                #push the story from the hash into the stories_array, above
  end                                                             #end loop
  return stories_array                                            #returns the stories_array
end

def array_conversion(json, type)
  stories_array = []                                              #creates the empty array to store the stories
  stories_array = story_hash(json["new"])
  return stories_array                                            #returns the stories_array
end

def print_stories(array)                                          #method to print the stories onto the screen
  count = 1                                                       #sets the count to 1
  array.each do |story|                                           #for each story, do the following
    puts "#{count}. #{story[:title]} | #{story[:category]} | Upvotes: #{story[:upvotes]}\n"                   #print the story number, title, category, and upvotes onto a single line
    count += 1                                                                                                #increment the line count by one
  end
end

#RUN IT
mashable_url = "http://mashable.com/stories.json"                   #assigns the endpoint to mashable_url variable
mashable_json_response = connect_to_api(mashable_url)               #passes mashable_url to the connect_to_api method and assigns it to the mashable_json_response variable
new_stories = array_conversion(mashable_json_response, "new")       #passes mashable_json_response to the array_conversion method and assigns the result it to the new_stories variable
print_stories(new_stories)                                          #prints the stories to the screen
