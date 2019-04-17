# Write a method that can rotate the last n digits of a number. Note that rotating just 1 digit results in the original number being returned. You may use the rotate_array method from the previous exercise if you want. (Recommended!) You may assume that n is always a positive integer.

def rotate_rightmost_digits(number, places)
  numbers = number.to_s.chars
  rotate = numbers.delete_at(-places)
  numbers << rotate
  numbers.join('').to_i
end

# Test cases
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
