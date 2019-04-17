# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

def show_multiplicative_average(numbers)
  average = (numbers.reduce(:*).to_f / numbers.length)
  puts format('%.3f', average)
end

# Test Cases
show_multiplicative_average([3, 5]) # == 7.500
show_multiplicative_average([6]) # == 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # == 28361.667

