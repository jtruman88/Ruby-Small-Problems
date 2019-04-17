# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes. Words consist of any string of characters that do not include a space.

def word_sizes(string)
  words = string.split(' ')
  word_lengths = {}
  words.each do |word|
    if word_lengths[word.length]
      word_lengths[word.length] += 1
    else
      word_lengths[word.length] = 1
    end
  end
  word_lengths
end

# Test cases
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
