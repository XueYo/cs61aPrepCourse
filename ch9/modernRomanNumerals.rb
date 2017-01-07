def roman_numeral num
    m = 'M'* (num /1000)

    huns = (num % 1000 / 100)
    tens = (num % 100 / 10)
    ones = (num % 10 / 1)

    if huns == 9
      c = 'CM'
    elsif huns == 4
      c = 'CD'
    else
      c = 'D' * (num % 1000 / 500) + 'C'* (num % 500 / 100)
    end

   if tens ==  9
     x = 'XC'
   elsif tens == 4
     x = 'XL'
   else
     x = 'L'*(num % 100 / 50) + 'X'*(num % 50 / 10)
   end

   if ones == 9
     i = 'IX'
   elsif ones == 4
     i = 'IV'
   else
     i = 'V'* (num % 10 / 5) + 'I'* (num % 5 /1)
   end

   rmconvert = m + c + x + i

end

  puts (roman_numeral(1451))
