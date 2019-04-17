# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Further Exploration - There are many ways to solve this problem and different varieties of it. Suppose, for instance, that we also want to replace uppercase and capitalized words. Can you change your solution this so the spaces between consecutive numbers are removed? Suppse the string already contains two or more space separated numbers (not words); can you leave those spaces alone, while removing any spaces between numbers that you create? What about dealing with phone numbers? Is there any easy way to format the result to account for phone numbers? For our purposes, assume that any 10 digit number is a phone number, and that the proper format should be "(123) 456-7890".


DIGITS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(words)
  DIGITS.keys.each do |word|
    words.gsub!(/#{word}/, DIGITS[word])
  end
  words
end

# Further Exploration
def word_to_digit1(string)
  words = string.split(' ')
  current = ''
  words.each_with_index do |word, index|
    current << word
    if DIGITS.keys.any? { |num| num =~ /#{word}/i }
      word.gsub!(/#{word}/, DIGITS[word.downcase])
    end
    if index != words.length - 1 && current == word
      word << ' '
      if !DIGITS.keys.any? { |num| num =~ /#{word}/i }
        word.prepend(' ')
      end
    end
    current = ''
  end
  words.join('')
end

# Test Cases
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
p word_to_digit1('Please call me at five Five five one Two three four okay? Thanks.')  # == 'Please call me at 5551234 okay? Thanks.'
p word_to_digit1('Please call me at five five five one two three four. My zipcode is 8 9 5 3 2. Thanks.') # == 'Please call me at 5551234. My zipcode is 8 9 5 3 2. Thanks.'
p word_to_digit1('Please call me at seven zero two five five five one two three four. Thanks.') # == 'Please call me at (702) 555-1234. Thanks.'


=begin
1. Replace different cased words.
  - Use #downcase on #{word}
2. Remove spaces between words that the method changes to numbers, but not existing numbers
  - Define array, words = string.split(' ')
  - Define variable, previous = ''
  - Define variable, index = 0
  - map! through each word in words
    - if DIGITS.keys.include?(/[#{word.downcase}]/)
      - DIGITS[word]
    - else
      - if DIGITS.keys.include?(/[#{previous.downcase}]/)
        - " #{word} "
      - else
        - index == words.length ? "#{word}" : #{word} "
      - end
    - end
    - previous = word
    - index += 1
3. For 10 consecutive numbers, convert it to phone number format (xxx) xxx-xxxx
=end
