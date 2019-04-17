# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# Further Exploration - Write a method that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array. Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. You may not use an if, unless, or case statement or modifier.

# initial exercise
# works for all Further Exploration cases
def palindrome?(phrase)
  phrase == phrase.reverse
end

# Further exploration

# array method
def palindrome_array?(array)
  array == array.reverse
end

# array or string method
def is_palindrome?(test)
  test == test.reverse
end

# Test cases
puts palindrome?('madam') # == true
puts palindrome?('Madam') # == false
puts palindrome?("madam i'm adam") # == false
puts palindrome?('356653') # == true
puts
puts palindrome_array?([1, 2, 3, 2, 1])
puts palindrome_array?(%w(a b c D c b a))
puts palindrome_array?(%w(a b C D c b a))
puts "Strings:"
puts is_palindrome?('madam')
puts is_palindrome?('Madam')
puts is_palindrome?("madam i'm adam")
puts is_palindrome?('356653')
puts "Arrays:"
puts is_palindrome?([1, 2, 3, 2, 1])
puts is_palindrome?(%w(a b c D c b a))
puts is_palindrome?(%w(a b C D c b a))
