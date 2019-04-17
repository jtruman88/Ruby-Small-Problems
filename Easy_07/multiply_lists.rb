# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Further Exploration - The Array#zip method can be used to produce an extremely compact solution to this method. Read the documentation for zip, and see if you can come up with a one line solution (not counting the def and end lines).

# Initial Solution
def multiply_list(numbers1, numbers2)
  products = []
  numbers1.each_with_index do |num, ind|
    products << num * numbers2[ind]
  end
  products
end

# Further Exploration
def multiply_list1(numbers1, numbers2)
  numbers1.zip(numbers2).map { |nums| nums.reduce(:*) }
end

# Test Cases
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list1([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
