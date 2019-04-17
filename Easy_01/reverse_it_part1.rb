# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

=begin
START

DEFINE a method, "reverse_sentence" with a single parament, "sentence"
  - SET a new array, "reverse" = "sentence" split, reverse, then join

CALL "reverse_sentence" with a sentence as an agument

END
=end

def reverse_sentence(sentence)
  reverse = sentence.split(' ').reverse.join(' ')
end

# Test cases - Should return true
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
