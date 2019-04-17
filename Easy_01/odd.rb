# Write a method that takes one integer argument, which may be positive, negative, or zero. This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

=begin
START

DEFINE a method "is_odd?" with a single parameter, "int"
  - verify "int" is positive by checking the modulo of 2 != 0
  - take the absolute value of the remainder

call "is_odd?" on test cases

END
=end

def is_odd?(int)
  (int % 2).abs != 0
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts

def is_odd2?(int)
  (int.remainder(2)).abs != 0
end

# Test cases
puts is_odd2?(2)
puts is_odd2?(5)
puts is_odd2?(-17)
puts is_odd2?(-8)
puts is_odd2?(0)
