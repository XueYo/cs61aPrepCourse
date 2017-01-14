  puts 'What year were you born?'
  year = gets.chomp.to_i
  if year < 0
    puts 'Sorry we cannot recognize people who are born before 0 AD.'
  else
    puts 'What month are you born? Enter a number from 1-12.'
    month = gets.chomp.to_i
      if month > 12 || month < 1
        puts 'Please put a real month.'
      else
       puts 'What is the date of your existence?'
        date = gets.chomp.to_i
         if date > 31 || date < 1
            puts 'Please enter the correct date in a month.'
          else
            puts 'Let\'s see how many spanks you get!'
        end
      end
    end

  day = Time.mktime(year, month, date)
  today = Time.new
  dif = (today - day)
  age = dif/3600/24/365
  ageAsI = age.to_i
  puts 'You get '+ ageAsI.to_s + ' spanks.'
  puts 'Be prepared!'
  sp= ' Spank!'* ageAsI
  puts sp











#bday = Time.mktime(1970, 11, 28)
#today = Time.mktime(1970, 11, 29)
#ageInSec = today - bday
#numOfBirthdays =


#puts ageIn.to_s
#puts secInaDay.to_s
