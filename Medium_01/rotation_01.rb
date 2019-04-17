# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified. Do not use the method Array#rotate or Array#rotate! for your implementation.

# Further Exploraton - Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.

# Initial Solution
def rotate_array(array)
  rotated = array[1..-1]
  first = array.first
  rotated.push(first)
end

# Further Exploraton
def rotate_string(string)
  rotate_array(string.chars).join('')
end

def rotate_integer(number)
  rotate_array(number.to_s.chars).join('').to_i
end

# Test cases
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]
puts
string = 'hello'
p rotate_string(string) == 'elloh'
p string == 'hello'
number = 1234
p rotate_integer(number) == 2341
p number == 1234
