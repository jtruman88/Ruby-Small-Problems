# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

=begin
START

DEFINE a method, "average" with a single parameter, "numbers"
  - SET "sum" = 0
  - LOOP over EACH number in "numbers"
    - add each numbet to "sum"
  - return "sum" / "numbers" length

CALL "average" with argument for test cases

END
=end

def average(numbers)
  sum = 0
  numbers.each { |number| sum += number }
  sum / numbers.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Further Exploration - Currently, the return value of average is an Integer. When dividing numbers, sometimes the quotient isn't a whole number, therefore, it might make more sense to return a Float. Can you change the return value of average from an Integer to a Float?

def float_average(numbers)
  sum = 0.0
  numbers.each { |number| sum += number }
  sum / numbers.length
end

# Test cases
puts float_average([1, 5, 87, 45, 8, 8]) # == 25
puts float_average([9, 47, 23, 95, 16, 52]) # == 40
