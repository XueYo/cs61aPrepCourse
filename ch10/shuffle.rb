def shuffle array
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

puts (shuffle(['cheese','beans','rice']))
