# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world. Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number. Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

def find_fibonacci_index_by_length(digits)
  index = 1
  fib_nums = [1, 1]
  until fib_nums.last.to_s.length >= digits
    fib_nums << fib_nums[index - 1] + fib_nums[index]
    index += 1
  end
  index + 1
end

# Test cases
puts find_fibonacci_index_by_length(2) # == 7
puts find_fibonacci_index_by_length(10) # == 45
puts find_fibonacci_index_by_length(100) # == 476
puts find_fibonacci_index_by_length(1000) # == 4782
puts find_fibonacci_index_by_length(10000) # == 47847
