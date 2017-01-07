def english_number num
  if num < 0
    return 'Please enter a positive number'
  end
  if num == 0
    return 'zero'
  end
  num_string = ''
ones_place = [' one', ' two', ' three',
              ' four',' five', ' six',
              ' seven', ' eight', ' nine']
tens_place = [' ten', ' twenty', ' thirty',
               ' forty', ' fifty', ' sixty',
              ' seventy', ' eighty', ' ninety']
teens = [' eleven',' twelve',' thirteen',
          ' fourteen', ' fifteen',' sixteen',
          ' seventeen', ' eighteen',' nineteen']

left = num

write = left / 1000
left = left - write*1000
if write > 0
   thousands = english_number write
   num_string = num_string + thousands + ' thousand'
   if left > 0
    num_string = num_string + ''
   end
 end

write = left / 100
left = left - write*100
if write > 0
   hundreds = english_number write
   num_string = num_string + hundreds + ' hundred'
    if left > 0
     num_string = num_string + ''
    end
  end

write = left/10
left = left - write*10
if write > 0
   if ((write== 1) and (left > 0))
      num_string = num_string + teens[left-1]
      left = 0
   else
      num_string = num_string + tens_place[write-1]
    end
   end

  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  return num_string
end

startNum = 20
num = startNum
lyric1 = ' bottles of beer on the wall'
lyric2 = ' bottles of beer.'
lyric3 = 'Take one down and pass it around, '

while num > 2
  puts english_number(num)+ lyric1 + ', ' +
       english_number(num) + lyric2
  puts lyric3 + english_number(num - 1) + lyric1 + '.'
  num = num -1
end

puts 'Two' + lyric1 + ', ' + lyric2
puts lyric3 + 'one bottle of beer on the wall.'
puts 'One bottle of beer on the wall, 1 bottle of beer.'
puts lyric3 + ' no more bottles of beer on the wall.'
