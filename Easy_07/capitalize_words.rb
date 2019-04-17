# Write a method that takes a single String argument and returns a new string that contains the original value of the argument, but the first letter of every word is now capitalized. You may assume that words are any sequence of non-blank characters, and that only the first character of each word must be considered.

# Further Exploration - Ruby gives us this convenient method, String#capitalize. If we didn't have that method, then how would you go about solving this problem? There are a few ways to go about doing this.

# Initial Solution
def word_cap(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

# Further Exploration
def word_capitalization(string)
  words = string.split(' ')
  counter = 0
  while counter < words.length
    if words[counter][0] >= 'a' && words[counter][0] <= 'z'
      words[counter][0] = (words[counter][0].ord - 32).chr
      if words[counter].length > 1
        index = 1
        while index < words[counter].length
          if words[counter][index] >= 'A' && words[counter][index] <= 'Z'
            words[counter][index] = (words[counter][index].ord + 32).chr
          end
          index += 1
        end
      end
    end
    counter += 1
  end
  words.join(' ')
end

# Test Cases
p word_cap('four score and seven')  == 'Four Score And Seven'
p word_cap('the javaScript language')  == 'The Javascript Language'
p word_cap('this is a "quoted" word')  == 'This Is A "quoted" Word'
p word_capitalization('four score and seven')   == 'Four Score And Seven'
p word_capitalization('the javaScript language')   == 'The Javascript Language'
p word_capitalization('this is a "quoted" word')   == 'This Is A "quoted" Word'
