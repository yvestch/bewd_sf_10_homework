require 'rest-client'
require 'pry'
require 'json'


def connect_to_api(url)
  response = RestClient.get(url)
  parsed = JSON.parse(response)
  finding_stories(parsed)
end

def finding_stories(response)
  stories = response["hot"]
  puts "there are #{stories.length} stories in hot mashable stories"
  stories.each do |story|
    title = story["title"]
    puts "#{title}"
  end
end

url = "http://mashable.com/stories.json"

connect_to_api(url)
