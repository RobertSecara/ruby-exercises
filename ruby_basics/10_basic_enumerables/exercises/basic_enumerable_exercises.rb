def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  
  inventory_list.each { |key, value| puts "#{key}, quantity: #{value}"}
end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1

  guesses.each_with_index { |fruit, index| puts "Guess ##{1 + index} is #{fruit}" }

  # guesses.each_with_index do |guess, index|
  #   # Index starts at 0, so we add 1 to match the "Guess #1" format
  #   guess_number = index + 1
  #   output_string = "Guess ##{guess_number} is #{guess}"
  #   puts output_string
  # end

end

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map { |number| number.abs }
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4

  inventory_list.select { |item, amount| amount < 4 }
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  # word_list.reduce { |words_with_lengths, word| words_with_lengths.push('cat' => 3) }

  word_list.reduce({}) do |lengths_hash, word|
    lengths_hash[word] = word.length
    lengths_hash
  end
  
end
