# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

=begin
START

  - WITH LOOP
DEFINE a method, "sum" with a single parament, "number"
  - SET "array" = convert "number" to an array of numbers, store in "array"
    - convert to a string
    - split
    - iterate over each element in "array", setting to_i
  - SET "sum_nums" = 0
  - iterate over "array" adding each to "sum_nums"
  - RETURN "sum_nums"

  - CHALLENGE
DEFINE a method, "sum" with a single parament, "number"
  - "number" to string, split, map, to integer, reduced
END
=end

# Long version
def sum(number)
  array = number.to_s.split('')
  array.map! { |num| num.to_i }
  sum_nums = 0
  array.each { |num| sum_nums += num }
  sum_nums
end

# Test cases
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Challenge version
def short_sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

# Test cases
puts
puts short_sum(23) == 5
puts short_sum(496) == 19
puts short_sum(123_456_789) == 45
