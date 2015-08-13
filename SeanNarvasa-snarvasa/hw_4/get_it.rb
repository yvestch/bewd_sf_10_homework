#Sean Narvasa | 081215 | "Get it"
#reddit API: https://www.reddit.com/.json
#mashable API: http://mashable.com/stories.json

require 'pry'

Net::HTTP.get('https://www.reddit.com/.json')
uri = URI('https://www.reddit.com/.json')

puts uri

#* * * * * * * * * * *
#def reddit_stories {}
#def get mashable_stories {}
#######
