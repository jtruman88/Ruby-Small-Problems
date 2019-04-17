# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# Further Exploration - Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?

def palindromic_number?(number)
  number_string = number.to_s
  number_string == number_string.reverse
end

# Test cases
puts palindromic_number?(34543) # == true
puts palindromic_number?(123210) # == false
puts palindromic_number?(22) # == true
puts palindromic_number?(5) # == true
