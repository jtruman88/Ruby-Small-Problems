# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# Further Exploration - Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.

# Initial Solution
def string_to_integer(string, numbers)
  str_nums = string.chars.reverse
  number = 0
  str_nums.each_with_index do |num, index|
    number += numbers[num] * 10**(index)
  end
  number
end

# Further Exploration
def hexadecimal_to_integer(string, hexadecimals)
  str_nums = string.chars.reverse
  number = 0
  str_nums.each_with_index do |num, index|
    number += hexadecimals[num] * 16**(index)
  end
  number
end

numbers = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    }

hexadecimals = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'A' => 10,
    'B' => 11,
    'C' => 12,
    'D' => 13,
    'E' => 14,
    'F' => 15
  }



# Test cases
puts string_to_integer('4321', numbers) # == 4321
puts string_to_integer('570', numbers) # == 570
puts string_to_integer('0', numbers) # == 0
puts hexadecimal_to_integer('4D9F', hexadecimals) # == 19871
