def is_palindrome(string)
  string.downcase!

  reverse = ""
  count = string.length

  while count > 0
    count -= 1
    reverse += string[count]
  end

  if string == reverse
    line_width = 40
    puts "#{string.capitalize} is a palindrome".center(line_width)
  else
    line_width = 40
    puts "#{string.capitalize} is not a palindrome".center(line_width)
  end

end

##### main ####

while true
  puts "Please Enter a \"Word\" !! : ( ONLY!! quit/QUIT/Quit. Will end this program!! )\n\n"
  word = gets.chomp
  finito = 'quit'
    if word == finito.upcase || word == finito.downcase || word == finito.capitalize
      break
    end

puts is_palindrome(word)

end
