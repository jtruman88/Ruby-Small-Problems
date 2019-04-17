# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

=begin
START


DEFINE a method, "stringy", with a single parament, "number"
  - RETURN an empty string if "number" = 0
  - SET "number_array" = []
  - "number".times { "number_array" << "1" }
  - SET "index" = 0
  - WHILE index < "number_array" length
    - IF index % 2 != 0
      - "number_array"["index"] = 0
    - increment index
  - RETURN "number_array" join('')

Call "stringy" with 1 agument for test cases.

END
=end

def stringy(number)
  return '' if number == 0
  number_array = []
  number.times { number_array << '1' }
  index = 0
  while index < number_array.length
    number_array[index] = 0 if index % 2 != 0
    index += 1
  end
  number_array.join('')
end

# Test cases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

# Further Exploration - Modify stringy so it takes an optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy2(number, start=1)
  return '' if number == 0
  number_array = []
  number.times { number_array << '1' }
  index = 0
  while index < number_array.length
    if start == 1
    number_array[index] = 0 if index % 2 != 0
    else
      number_array[index] = 0 if index % 2 == 0
    end
    index += 1
  end
  number_array.join('')
end

puts
puts stringy2(6, 0)
puts stringy2(9, 0)
puts stringy2(4, 0)
puts stringy2(7, 0)
