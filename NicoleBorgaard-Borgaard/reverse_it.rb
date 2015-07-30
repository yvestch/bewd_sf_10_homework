require 'pry'

def my_reverse(string)
  chars = string.downcase.chars
  word = ""
  until chars.length == 0
    word << chars.pop
  end
  puts word.concat(33) #adds ! to the end of reversed string
end

puts "Please provide a word \n"
string = gets.strip

puts my_reverse(string)
