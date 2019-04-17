# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

# Further Exploration - What if we wanted generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the multiply method?

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# Recursion
def power(num, n)
  return num if n <= 1
  multiply(num, power(num, n - 1))
end

# Loop
def power2(num, n)
  total = num
  until n <= 1
    total = multiply(total, num)
    n -= 1
  end
  total
end

# Verify answers
puts power(6, 5) # => 7776
puts power2(6, 5)# => 7776
puts 6**5        # => 7776

# psuedo
=begin
- multiply num, power(num, n - 1)

multiply num, num
  -multiply total * num(n - 1) times
=end

