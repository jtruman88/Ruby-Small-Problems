# Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Further Exploration - Can you explain why our solution divides array.size by 2.0 instead of just 2?

def halvsies(array)
  length = array.length
  if length.even?
    array1 = array[0..(length / 2 - 1)]
    array2 = array[(length / 2)..-1]
  else
    array1 = array[0..(length / 2)]
    array2 = array[(length / 2 + 1)..-1]
  end
  [array1, array2]
end

# Further Exploration
# You needed to divide by 2.0 so that quotient
# would be a decimal that could be rounded up using .ceil

# Test cases
p halvsies([1, 2, 3, 4])  == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])  == [[1, 5, 2], [4, 3]]
p halvsies([5])  == [[5], []]
p halvsies([])  == [[], []]
