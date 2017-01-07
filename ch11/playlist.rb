#this code doesn't seem to be working and I cannot understand why
#Check bottom for more details
def shuffle array
playlist= []
  while array.length > 0
    random_thing = rand(array.length)
    selected_thing = 0
    left_over = []
    array.each do |thing|
      if random_thing == selected_thing
      playlist.push thing
      else
      left_over.push thing
      end
    selected_thing = selected_thing + 1
      end
      array = left_over
    end
    return playlist
end

music = shuffle(Dir['C:/Music/**/*.wma'])

#I am not really understanding tis next code taken from
#the possible solutions for chapter 11.
# I can't seem to understand why files need to be open with
#'playlist.m3u' whene I have no files under that name.
# when the new file is opened, there are none of my songs in it
# does wma files not work for this?
File.open 'playlist.m3u', 'w' do |f|
  music.each do |wma|
    f.write wma+"\n"
    # I am also confused with the +"\n" why is that necessary?
  end
end
puts 'Enjoy!'
