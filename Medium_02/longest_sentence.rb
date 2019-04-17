require 'yaml'
TEXTS = YAML.load_file('samples.yml')
# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

# Further Exploration -What about finding the longest paragraph or longest word? How would we go about solving that problem?

# Initial Solution
def longest_sentence(text)
  chars = text.chars
  sentences = [[]]
  index = 0
  chars.each do |char|
    if char =~ /[.!?]/
      sentences[index] << char
      sentences[index] = sentences[index].join('').split(' ')
      index += 1
      sentences[index] = []
    else
      sentences[index] << char
    end
  end
  sentences.pop
  sentences.sort! { |a, b| a.length <=> b.length }
  puts sentences.last.join(' ')
  puts sentences.last.length
end

# Further Exploration
def longest_paragraph(text)
  paragraphs = text.split("\n\n")
  longest = paragraphs.max_by { |para| para.split.length }
  longest = longest.strip
  words = longest.split.length
  puts longest
  puts words
end

def longest_word(text)
  words = text.split(' ')
  longest = words.max_by { |word| word.length }
  longest = longest.strip
  length = longest.length
  puts "The longest word is #{longest} with #{length} characters."
end

# Test cases
longest_sentence(TEXTS['gettysburg'])
longest_sentence(TEXTS['frankenstein'])

longest_paragraph(TEXTS['gettysburg'])
longest_paragraph(TEXTS['frankenstein'])

longest_word(TEXTS['gettysburg'])
longest_word(TEXTS['frankenstein'])

# Pseudo:
# define method, longest sentence, with 1 parameter, text
#  split the text up into sentences where the last character is a '.', '!' or '?', store in array
#    - chars = text.chars
#    - set array, sentences = []
#    - set variable, index = 0
#    - chars.each do |char|
#    - On each iteration, check if char is '.', '!' or '?'.
#    - If not, add to sentencs[index]
#    - If yes, add to sentences[index], join, then increment index, add
#  hold each sentence in a sub array
#  compare the length of each sentence-array to find longest
#    - sentences.sort! { |a, b| a.length <=> b.length }
#  puts sentence.last
#  puts sentence.last.length
