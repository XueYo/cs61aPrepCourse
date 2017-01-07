def sort array
  recursive_dict_sort array, []
end
def recursive_dict_sort unsorted_list, sorted_list
  while unsorted_list.length > 0
  smallest_word = unsorted_list.pop
  unsorted = []
    unsorted_list.each do |word|
      if word.downcase < smallest_word
      unsorted.push smallest_word
      smallest_word = word
      else
      unsorted.push word
      end
    end
    sorted_list.push smallest_word
  end
  return sorted_list
end

puts(sort(['sand', 'Land', 'hand']))
