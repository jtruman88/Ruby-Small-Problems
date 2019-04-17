# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation. You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Further Exploration - Take a few minutes to read about Array#zip. #zip doesn't do the same thing as interleave, but it is very close, and more flexible. In fact, interleave can be implemented in terms of zip and one other method from the Array class. See if you can rewrite interleave to use zip.

# Initial Solution
def interleave(arr1, arr2)
  counter = 0
  new_arr = []
  while counter < arr1.length
    new_arr << arr1[counter]
    new_arr << arr2[counter]
    counter += 1
  end
  new_arr
end

# Further Exploration
def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

# Test cases
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
