require 'rest-client'
require 'json'

def reddit_api
array = []
url ="https://www.reddit.com/.json"

response = RestClient.get(url)
parsed = JSON.parse(response)

parsed["data"]["children"].each do |i|
array.push({category: i["data"]["subreddit"], title: i["data"]["title"], upvotes: i["data"]["ups"]})
end

puts array
end

def mashable_api
array = []
url ="http://www.mashable.com/stories.json"

response = RestClient.get(url)
parsed = JSON.parse(response)

parsed["new"].each do |i|
array.push({category: "new", title: i["title"], shares: i["shares"]["total"]})
end

parsed["rising"].each do |i|
array.push({category: "rising", title: i["title"], shares: i["shares"]["total"]})
end

parsed["hot"].each do |i|
array.push({category: "hot", title: i["title"], shares: i["shares"]["total"]})
end

puts array
end

reddit_api
mashable_api

# Not sure if I did this: 6 - Print each story from the array on your "Front Page"
