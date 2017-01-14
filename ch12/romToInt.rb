rn = {}
rn['i'] = 1
rn['v'] = 5
rn['x'] = 10
rn['l'] = 50
rn['c'] = 100
rn['d'] = 500
rn['m'] = 1000

# get roman numeral and put each letter in an array
puts 'Enter a roman numeral'
roman = gets.chomp.downcase
romanArray = []
roman.each_char do |letter|
  romanArray.push roman[letter]
#check if letters are included in roman numerals
  check =  rn[letter]
  if !check
    puts 'Not a roman numeral, Please enter a roman numeral'
  break
  end
end
#convert romanArray to numbers in an array
numArray = []
romanArray.each do |letter|
letter = letter.chr
number = rn[letter]
numArray.push number
end
#Calculations from numbers from the right
numCount = numArray.length - 1
#first number
number = numArray[numCount]
numCount = numCount -1
#Add or subract the next numbers
while numCount > -1
  if numArray[numCount]< numArray[numCount + 1]
    number = number - numArray[numCount]
  else
    number = number + numArray[numCount]
  end
  numCount = numCount - 1
end
puts number
