#I probably can do somehing about the repeating code for the trillions
#billions, and thousands but I don't know what yet
#and it will probably make the numbers beyond trillions easier to do
#I will fix next week
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

write = left/ 1000000000000
left = left - write*1000000000000
  if write > 0
  trillions = english_number write
  num_string = num_string + trillions + ' trillion'
   if left > 0
   num_string = num_string + ''
   end
  end

write = left/ 1000000000
left = left -write*1000000000
  if write > 0
  billions = english_number write
  num_string = num_string + billions + ' billion'
   if left > 0
   num_string = num_string + ''
   end
  end

write = left/ 1000000
left = left -write*1000000
  if write > 0
   millions = english_number write
   num_string = num_string + millions + ' million'
   if left > 0
    num_string = num_string + ''
   end
  end

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
      num_string = num_string + teen[left-1]
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

puts (english_number(8734907776032))
