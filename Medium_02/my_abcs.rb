=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.
=end

BLOCKS = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'],
          ['n', 'a'], ['g', 't'], ['r', 'e'], ['f', 's'],
          ['j', 'w'], ['h', 'u'], ['v', 'i'], ['l', 'y'],
          ['z', 'm']
]

def block_word?(word)
  letters = word.downcase.chars
  BLOCKS.each do |block|
    if letters.count(block[0]) +
       letters.count(block[1]) >= 2
      return false
    end
  end
  true
end

# Test cases
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# Psuedo
=begin
- set array CONSTANT, blocks = each block as 2 element array containing the two letters
define method block_word?, with 1 parameter, word
  - letters = word.downcase.chars
  - test if word has both letters in any given block
    - if yes, return false
    - else, return true
  - BLOCKS.each do |block|
    if letters.include?(block[0]) && letters.include?(block[1])
     return false
     end
     end
     true
=end
