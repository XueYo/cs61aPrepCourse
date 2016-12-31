puts 'HEY SONNY, DO YOU HAVE ANYTHING TO ASK GRANDMAMA?'
byeNum = 0
while true
  response = gets.chomp

  if response == 'BYE'
    byeNum = byeNum + 1
  else
    byeNum = 0
  end
    if byeNum == 3
    puts 'BYE SONNY!!!'
      break
  end

    if  response == response.upcase
      puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
    else
      puts 'SOONY, YOU\'LL HAVE TO SPEAK UP!'
    end

end
