def palindrome?(string)
# downcase the string
string.downcase
#compare string with reversed string
if string == string.reverse
    "True"
else
    "False"
  end
end
