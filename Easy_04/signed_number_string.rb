# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well. Write a method that takes an integer, and converts it to a string representation. You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# Further Exploration - Refactor our solution to reduce the 3 integer_to_string calls to just one.

def signed_integer_to_string(integer, numbers)
  if integer < 0
    negative = true
    integer *= -1
  else
    negative = false
  end
  integers = []
  left = integer
  loop do
    integers << left % 10
    left /= 10
    break if left <= 0
  end
  number = integers.reverse.map { |int| numbers[int] }.join('')
  negative ? "-#{number}" : "+#{number}"
end

numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# Test cases
puts signed_integer_to_string(4321, numbers) # == '+4321'
puts signed_integer_to_string(-123, numbers) # == '-123'
puts signed_integer_to_string(0, numbers) # == '0'
