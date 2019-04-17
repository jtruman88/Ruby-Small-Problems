# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

=begin
START

DEFINE a method, "digit_list" with one paramter, "number"
  - SET "digits" = "number" to string, then split by each character
  - map "digits" to set all elements to integers
  - RETURN the array of "digits"

CALL "digit_list" with a positive integer as argument

END
=end

def digit_list(number)
  digits = number.to_s.split('')
  digits = digits.map { |digit| digit.to_i }
  digits
end

# Test cases
puts digit_list(12345).inspect
puts digit_list(7).inspect
puts digit_list(375290).inspect
puts digit_list(444).inspect
