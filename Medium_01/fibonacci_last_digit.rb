# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly. In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# Initial Solution
def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last.to_s[-1].to_i
end

# Further Exploration
def fibonacci_last1(nth)
  fibs_last = (2..59).each_with_object([1, 1]) do |num, arr|
    arr << (arr[num - 1] + arr[num - 2]).to_s[-1].to_i
  end
  fibs_last[(nth % 60) - 1]
end

# Test Cases
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
#p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
#p fibonacci_last(123456789) # -> 4
puts
p fibonacci_last1(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last1(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last1(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last1(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last1(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last1(123456789) # -> 4