#class for array
class Array
def to_shuf
  array = self
  shuffled = []
  while array.length > 0
    random_thing = rand(array.length)
    selected_thing = 0
    left_over = []
    array.each do |thing|
      if random_thing == selected_thing
      shuffled.push thing
      else
      left_over.push thing
      end
    selected_thing = selected_thing + 1
      end
      array = left_over
    end
    return shuffled
end
end
#class for integer for factorial method
class Integer
def to_factorial
if self < 0
return 'You can\'t take the factorial of a negative number!'
end
if self <= 1
1
else
self * (self-1).to_factorial
end
end
#roman Numeral Method
def to_roman_numeral
    m = 'M'* (self /1000)

    huns = (self % 1000 / 100)
    tens = (self % 100 / 10)
    ones = (self % 10 / 1)

    if huns == 9
      c = 'CM'
    elsif huns == 4
      c = 'CD'
    else
      c = 'D' * (self % 1000 / 500) + 'C'* (self% 500 / 100)
    end

   if tens ==  9
     x = 'XC'
   elsif tens == 4
     x = 'XL'
   else
     x = 'L'*(self % 100 / 50) + 'X'*(self % 50 / 10)
   end

   if ones == 9
     i = 'IX'
   elsif ones == 4
     i = 'IV'
   else
     i = 'V'* (self % 10 / 5) + 'I'* (self % 5 /1)
   end

   rmconvert = m + c + x + i

end
end

puts 1451.to_roman_numeral
puts 10.to_factorial
puts ['m','g','a'].to_shuf
puts 3.to_factorial
