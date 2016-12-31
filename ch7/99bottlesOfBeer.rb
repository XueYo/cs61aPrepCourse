startNum = 99
num = startNum
lyric1 = ' bottles of beer on the wall'
lyric2 = ' bottles of beer.'
lyric3 = 'Take one down and pass it around, '

while num > 2
  puts num.to_s + lyric1 + ', ' +
       num.to_s + lyric2
  puts lyric3 + (num - 1).to_s + lyric1 + '.'
  num = num -1
end

puts '2' + lyric1 + ', ' + lyric2
puts lyric3 + '1 bottle of beer on the wall.'
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts lyric3 + ' no more bottles of beer on the wall.'
