puts 'Leap Years: Enter a starting year'
startYear = gets.chomp.to_i
puts 'Enter an ending year'
endYear = gets.chomp.to_i
leapYears = startYear
if
  leapYears >= endYear
  puts 'Please select a year bigger than ' + startYear.to_s
else
  puts 'Here are the leap years!'
  while leapYears <=endYear
    if leapYears % 4 == 0
      if leapYears % 100 != 0 || leapYears % 400 == 0
         puts leapYears
      end
    end
    leapYears = leapYears + 1
  end
end
