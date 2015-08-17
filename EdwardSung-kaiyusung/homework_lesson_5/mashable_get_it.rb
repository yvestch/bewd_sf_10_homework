require 'pry'
require 'rest-client'
require 'csv'
require 'json'

def connect_to_api(url)
  response = RestClient.get(url)
  parsed_response = JSON.parse(response)
end

def find_stories(parsed_response)
  stories = parsed_response["new"]
  puts "Mashable has #{stories.count} new stories!"
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
    new_story = {title: story["title"], upvotes: story["shares"]["total"], category: story["channel_label"]}
    return new_story
end

def to_csv(story_array)
  CSV.open("mashable.csv", "w") do |csv|
    csv << ["Title", "Upvotes", "Category"]
    story_array.each do |row|
      csv << row.values
    end
  end
end

mashable_url = "http://mashable.com/stories.json"
response = connect_to_api(mashable_url)
stories = find_stories(response)
story_array = print_stories(stories)
to_csv(story_array)
