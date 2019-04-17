# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

=begin
START

DEFINE a method, "reverse_words" with a single parameter, "string"
  - SET a new array, "words" = "string" split
  - LOOP through each element in "words"
  - IF element length >= 5, reverse the element
  - SET "reverse" = "words" join
  - RETURN the new string with reversed elements

CALL "reverse_words" with agurments as test cases

END
=end

def reverse_words(string)
  words = string.split(' ')
  words.each do |word|
    word.reverse! if word.length >= 5
  end
  reverse = words.join(' ')
end

# Test Cases
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
