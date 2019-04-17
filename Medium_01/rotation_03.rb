# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number. Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Further Exploration - Assume you do not have the rotate_rightmost_digits or rotate_array methods. How would you approach this problem? Would your solution look different? Does this 3 part approach make the problem easier to understand or harder?

# Initial Solution
def rotate_array(array)
  rotated = array[1..-1]
  first = array.first
  rotated.push(first)
end

def rotate_rightmost_digits(number, places)
  numbers = number.to_s.chars
  numbers[-places..-1] = rotate_array(numbers[-places..-1])
  numbers.join('').to_i
end

def max_rotation(number)
  number.to_s.length.downto(2) do |num|
    number = rotate_rightmost_digits(number, num)
  end
  number
end

# Further Exploration
def max_rotation1(number)
  numbers = number.to_s.chars
  numbers.length.downto(2) do |num|
    rotate = numbers.delete_at(-num)
    numbers << rotate
  end
  numbers.join('').to_i
end

# Test cases
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
puts
p max_rotation1(735291) == 321579
p max_rotation1(3) == 3
p max_rotation1(35) == 53
p max_rotation1(105) == 15 # the leading zero gets dropped
p max_rotation1(8_703_529_146) == 7_321_609_845
