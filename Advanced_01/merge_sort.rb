=begin
Sort an array of passed in values using merge sort. You can assume that this array may contain only one type of data. And that data may be either all numbers or all strings.

Merge sort is a recursive sorting algorithm that works by breaking down the array elements into nested sub-arrays, then recombining those nested sub-arrays in sorted order. It is best shown by example. For instance, let's merge sort the array [9,5,7,1]. Breaking this down into nested sub-arrays, we get:

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]
We then work our way back to a flat array by merging each pair of nested sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]
=end

# Initial Solution
def merge_sort(list)
  return list if list.length == 1
  half = list.length / 2 - 1
  list = [merge_sort(list[0..half])] + [merge_sort(list[half + 1..-1])]
  list = merge(list[0], list[1])
end

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

# Further Exploration - Every recursive algorithm can be reworked as a non-recursive algorithm. Can you write a method that performs a non-recursive merge sort?

def merge_sort_loop(list)
  temp = []
  list = list.map { |elem| [elem] }
  loop do
    index = 0
    loop do
      if list[index + 1] == nil
        temp[-1] = merge(temp[-1], list[index])
      else
        temp += [merge(list[index], list[index + 1])]
      end
      index += 2
      break if list[index] == nil
    end
    list = temp
    temp = []
    break if list.length < 2
  end
  list.flatten
end


# test cases
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
puts
p merge_sort_loop([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort_loop([5, 3]) == [3, 5]
p merge_sort_loop([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort_loop(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort_loop([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
