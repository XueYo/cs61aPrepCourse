words = []
puts 'Please type in some words'
while 1==1
  getword = gets.chomp
  words.push getword
  if getword == ''
    break
  end
end
  puts 'cool, here are your words in alphabetical order'
  puts words.sort
