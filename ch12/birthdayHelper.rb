file = 'birthdates.txt'
bday = {}
byear = {}
File.open file do |f|
  f.each_line do |line|
    year = line[-5..-1]
    date = line[-12..-8]
    name = line[0..-15]
    bday[name] = date
    byear[name] = year
  end
end
#get name
puts 'Enter a person\'s name to see their birthday and their approximate age.'
name = gets.chomp
bdate = bday[name]
year = byear[name]
#see if name exists
if !bdate
  puts 'I do not know this person'
#if name exists, find age and birthdate
else
day = bdate[-2,  2]
today = Time.new
#convert month to integer
monCon = bdate[0,  3]
if monCon == 'Jan'
  mon = 1
elsif monCon == 'Mar'
  mon = 3
elsif monCon == 'May'
  mon = 5
elsif monCon == 'Aug'
  mon = 8
elsif monCon == 'Oct'
  mon = 10
elsif monCon == 'Dec'
  mon = 12
end

birthday = Time.mktime(year, mon, day)
dif = today - birthday
ageAsFloat = dif/3600/24/365
age = ageAsFloat.to_i
puts name + ' is ' + age.to_s + ' years of age, and his next birthday will be on '+ bdate.to_s + '.'
end
