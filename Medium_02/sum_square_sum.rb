# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

def sum_square_difference(number)
  sum_square = (1..number).inject(:+)**2
  square_sum = (1..number).map { |num| num**2 }.inject(:+)
  sum_square - square_sum
end

# Test cases
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150


=begin
Psuedo

define method, sum_square_difference, with one parameter number
  - add all numbers from 1 to "number", then square them
    sum_square = (1..number).inject(:+)**2
  - take the square of all numbers from 1 to 'number' and add them together
    square_sum = (1..number).map { |num| num**2 }.inject(:+)
  - then subtract the second from the first and return it
    sum_square - square_sum
=end
