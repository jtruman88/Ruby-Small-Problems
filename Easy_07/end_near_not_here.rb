# Write a method that returns the next to last word in the String passed to it as an argument. Words are any sequence of non-blank characters. You may assume that the input String will always contain at least two words.

# Further Exploration - Our solution ignored a couple of edge cases because we explicitly stated that you didn't have to handle them: strings that contain just one word, and strings that contain no words. Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.

# Initial Solution
def penultimate(string)
  string.split[-2]
end

# Further Exploration
def penultimate1(string)
  return '' if string.empty?
  words = string.split
  middle = ''
  if words.length.odd?
    middle = "#{words[words.length / 2]}"
  else
    middle = "#{words[(words.length / 2) - 1]} #{words[words.length / 2]}"
  end
end

# Test Cases
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
p penultimate1('last word') == 'last word'
p penultimate1('Launch School is great!') == 'School is'
p penultimate1('Three words please') == 'words'
p penultimate1('one') == 'one'
p penultimate1('')  == ''
