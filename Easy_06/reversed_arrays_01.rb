# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object. You may not use Array#reverse or Array#reverse!.

def reverse_array(array)
  neg_index = -1
  (array.length / 2).times do |index|
    array[index], array[neg_index] = array[neg_index], array[index]
    neg_index -= 1
  end
  array
end

# Test cases / examples
=begin
list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!(list) # => []
list == []
=end
array0 = %w(a b c d e f)
p reverse_array(array0) # => ["f", "e", "d", "c", "b", "a"]
p array0                # => ["f", "e", "d", "c", "b", "a"]
array1 = [1, 2, 3, 4, 5, 6]
p reverse_array(array1) # => [6, 5, 4, 3, 2, 1]
p array1                # => [6, 5, 4, 3, 2, 1]
