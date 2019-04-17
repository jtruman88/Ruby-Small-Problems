# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list. You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# Further Exploration - An even shorter solution is possible by using either inject or each_with_object. Just for fun, read about these methods in the Enumerable module documentation, and try using one in your reverse method.

# Initial Solution
def reverse_array(arr)
  array = []
  arr.each { |item| array << item }
  neg_index = -1
  (array.length / 2).times do |index|
    array[index], array[neg_index] = array[neg_index], array[index]
    neg_index -= 1
  end
  array
end

# Further Exploration
def reverse_array1(arr)
  array = arr.each_with_object([]) { |ind, ob| ob.unshift(ind) }
end

def reverse_array2(arr)
  arr.inject([]) { |new_arr,elem| new_arr.unshift(elem) }
end


# Test Cases
p reverse_array([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_array(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse_array(['abc']) == ['abc']              # => true
p reverse_array([]) == []                        # => true
list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse_array(list)        # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
array0 = %w(a b c d e f)
p reverse_array(array0)
p array0
puts # for FE 1
p reverse_array1([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_array1(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse_array1(['abc']) == ['abc']              # => true
p reverse_array1([]) == []                        # => true
list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse_array1(list)        # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
array0 = %w(a b c d e f)
p reverse_array1(array0)
p array0
puts # For FE 2
p reverse_array2([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_array2(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse_array2(['abc']) == ['abc']              # => true
p reverse_array2([]) == []                        # => true
list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse_array2(list)        # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
array0 = %w(a b c d e f)
p reverse_array2(array0)
p array0
