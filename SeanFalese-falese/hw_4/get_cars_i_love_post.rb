require 'pry'
require 'rest-client'
require 'JSON'
require 'launchy'

def start
  make = gets.chomp
  year = gets.chomp.to_i
  api_url = "https://api.edmunds.com/api/vehicle/v2/#{make}?year=#{year}&view=basic&fmt=json&api_key=n2frga7tjbg5tqq3wyfpf5pw"
  # api_url2 = "https://api.edmunds.com/v1/api/maintenance/servicebulletinrepository/findbymodelyearid?modelyearid=#{yearid}&fmt=json&api_key=n2frga7tjbg5tqq3wyfpf5pw"
  connect(api_url)
end


def connect(api_url)
  get_data = RestClient.get(api_url){|response, request, result|response }
  # get_data2 = RestClient.get(api_url2){|response, request, result|response }
  parse(get_data)
end

def parse(get_data)
    h1 = JSON.parse(get_data)
    while h1.has_value?("INCORRECT_PARAMS") do
      puts h1["message"]
      puts "Please Re-enter your parameters"
      start
    end
    array(h1)
end

def array(h1)
  h2 = {}
  arr1 = []
  h1["models"].each do |car|
    # hash(car["niceName"])
    h2["niceName"] = car["niceName"]
    arr1.push(h2)
      car["years"].each do |year|
      # hash(year["id"]) #trying to iterate one level deeper and pull ID's from the array
      h2["year"] = year["id"]
      arr1.push(h2)
      end
    end
    model_pick(arr1)
end


# #create hash of model and yearID
# def hash(car,year) #arguments are not passing from above,
#   h2 = {model: car["niceName"], yearID: year["id"]}
#   puts h2
# end

#select model
def model_pick(arr1)
  puts arr1
  puts "Select a Model from the list above to check for service bulletins"
  model = gets.chomp
  while niceNames.include?(model) != true do
    puts "Please select a Model from the list"
    model = gets.chomp
  end
end


#program begins here
start
