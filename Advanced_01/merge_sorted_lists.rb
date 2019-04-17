# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order. You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order. Your solution should not mutate the input arrays.

def merge(arr1, arr2)
  merged = []
  index1 = 0
  index2 = 0
  loop do
    if arr1[index1] != nil &&
       (arr2[index2] == nil || arr1[index1] < arr2[index2])
      merged << arr1[index1]
      index1 += 1
    elsif arr2[index2] != nil &&
          (arr1[index1] == nil || arr2[index2] < arr1[index1])
      merged << arr2[index2]
      index2 += 1
    end
    break if merged.length >= arr1.length + arr2.length
  end
  merged
end

# Test cases
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
