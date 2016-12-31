puts 'Table of Contents'.center(60)
puts ''
chtitles = ['The Boy Who Lived', 'The Vanishing Glass', 'The Letters From No One', 'The Keeper of the Keys']
pgnum = ['--1', '-18', '-31','-46']
chapnum = 0
4.times do
  leftside = 'Chapter' + (chapnum + 1).to_s  + ' :'
  centers = chtitles[(chapnum)]
  rightside = pgnum[(chapnum)]

  puts leftside.ljust(20)+ centers.center(20) + rightside.rjust(20)
  chapnum = chapnum + 1
end
