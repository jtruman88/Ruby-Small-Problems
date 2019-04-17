# Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array. A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted. We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted. For further information, including pseudo-code that demonstrates the algorithm as well as a minor optimization technique, see the Bubble Sort wikipedia page. Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

# Further Exploration - Note that we did not use the optimization suggested on the Wiki page that skips looking at tail elements that we know are already sorted. If your solution also skipped this optimization, trying modifying your solution so it uses that optimization.

# Initial Solution
def bubble_sort!(array)
  loop do
    index = 0
    swaps = 0
    while index < array.length - 1
      if array[index] > array[index + 1]
        array[index], array[index + 1] =
          array[index + 1], array[index]
        swaps += 1
      end
      index += 1
    end
    break if swaps.zero?
  end
  array
end

# Further Exploration
def opt_bubble_sort!(array)
  n = array.length
  loop do
    new_n = 0
    1.upto(n - 1) do |i|
      if array[i - 1] > array[i]
        array[i - 1], array[i] =
          array[i], array[i - 1]
        new_n = i
      end
    end
    n = new_n
    break if n.zero?
  end
  array
end

# Test cases
array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

array = [6, 2, 7, 1, 4]
opt_bubble_sort!(array)
p array == [1, 2, 4, 6, 7]


=begin
Psuedo - ended up changing method after

define method, bubble_sort!, 1 parameter, array
  - set var, index = 0
  - iterate through array
    while index < array.length
  - inside the loop, we need to hold the starting array, in a var for compariosn
    starting_array = array
  - set var inner_ind = index
  - go inside of another loop to check each adjacent element pait
    while inner_ind < array.length
  - then we compare element at current index with element at next index
  - if current > next then swap them
    if array[inner_ind] > array[inner_ind + 1]
      array[inner_ind], array[inner_ind + 1] = array[inner_ind + 1], array[inner_ind]
    end
  - increment inner_ind by 1
    inner_ind += 1
  - then we check if beginning array equals array, if so break
    break if starting_array == array
  - increment index by 1
    index += 1
=end
