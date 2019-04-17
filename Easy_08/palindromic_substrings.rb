# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times. You may (and should) use the substrings method you wrote in the previous exercise. For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Further Exploration - Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case?

# Single Method Solution
def palindromes(string)
  palindromes = []
  0.upto(string.length - 1) do |index|
    index.upto(string.length - 1) do |count|
      if string[index..count].length > 1 &&
          string[index..count] == string[index..count].reverse
        palindromes << string[index..count]
      end
    end
  end
  palindromes
end

# Method Passing Solution
def substrings_at_start(string)
  substrings = []
  0.upto(string.length - 1) { |index| substrings << string[0..index] }
  substrings
end

def substrings(string)
  substrings = []
  0.upto(string.length - 1) do |index|
    current = string[index..-1]
    substrings << (substrings_at_start(current))
  end
  substrings.flatten
end

def palindromes1(string)
  palindromes = []
  strings = substrings(string)
  strings.each do |str|
    if str.length > 1 && str == str.reverse
      palindromes << str
    end
  end
  palindromes
end

# Further Exploration
def alpha_palindromes(string)
  palindromes = []
  0.upto(string.length - 1) do |index|
    index.upto(string.length - 1) do |count|
      chars = string[index..count].chars
      strings = chars.select { |char| char =~ /[a-z]/i }.join('')
      if strings.length > 1 &&
          strings.downcase == strings.downcase.reverse
        palindromes << strings unless palindromes.count(strings) > 0
      end
    end
  end
  palindromes
end

# Method Passing

# Test cases
 p palindromes('abcd') == []
 p palindromes('madam') == ['madam', 'ada']
 p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
 p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
puts
 p palindromes1('abcd') == []
 p palindromes1('madam') == ['madam', 'ada']
 p palindromes1('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
 p palindromes1('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
puts
 p alpha_palindromes('abcd') # == []
 p alpha_palindromes('-m-Adam-') # == ['mAdam', 'Ada']
