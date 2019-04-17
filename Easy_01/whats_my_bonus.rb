# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

=begin
START

DEFINE method "calc_bonus" with two parameters(salary, getting)
  - IF "getting" is true, then RETURN salary / 2 ELSE RETURN 0

CALL "calc_bonus" with arguments tfor test cases

END
=end

def calc_bonus(salary, getting)
  getting ? (salary / 2) : 0
end

# Test cases
puts calc_bonus(2800, true) == 1400
puts calc_bonus(1000, false) == 0
puts calc_bonus(50000, true) == 25000
