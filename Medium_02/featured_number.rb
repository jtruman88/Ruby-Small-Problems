# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice). Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

def featured(number)
  loop do
    number += 1
    if number % 7 == 0 &&
       number.odd?     &&
       !repeats?(number)
      return number
    end
    break if number >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end

def repeats?(number)
  repeat = false
  numbers = number.to_s.chars
  numbers.each_with_index do |num, ind|
    while ind < numbers.length - 1
      ind += 1
      if num == numbers[ind]
        repeat = true
        break
      end
    end
  end
  repeat
end

# Test cases
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

=begin
Psuedo

define method, featured, one parameter, number
  - find the next featured number
  - featured number must meet this criteria
    - multiple of 7
      number % 7 == 0
    - odd
      number.odd?
    - no repeat digits - check first
    - check that each digit does not occur again
      set var, repeat = false
      set array, numbers = number.to_s.chars
      numbers.each_with_index do |num, ind|
        while ind < numbers.length - 1
          ind += 1
          if num == numbers[ind]
            repeat = true
            break
          end
        end
      end
  - set variable, error = "No possible featured number past #{number}."
  - loop to increment number and check if it meets the criteria
    loop do
      number += 1
      if number % 7 == 0 &&
         number.odd?     &&
         !repeat
        return number
      end
    end
=end
