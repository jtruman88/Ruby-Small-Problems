# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest. You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Inital Solution
def substrings(string)
  substrings = []
  0.upto(string.length - 1) do |index|
    index.upto(string.length - 1) do |count|
      substrings << string[index..count]
    end
  end
  substrings
end

# Usgin previous method
def substrings_at_start(string)
  substrings = []
  0.upto(string.length - 1) { |index| substrings << string[0..index] }
  substrings
end

def substrings1(string)
  substrings = []
  0.upto(string.length - 1) do |index|
    current = string[index..-1]
    substrings << (substrings_at_start(current))
  end
  substrings.flatten
end

# Test cases
p substrings('abcde')  == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
p substrings1('abcde')  == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
