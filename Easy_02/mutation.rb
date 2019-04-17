=begin
What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
=end

=begin
-create an array of strings
-create an empty array
-iterate through the first array, passing each element to the second array using the destructive method '<<'
-iterate through the first array
  - upcasing each element that starts with 'c' or 's'.
-puts array2
=end

# "Each element in array2 was inserted using the destructive method <<. Since the elements in array2 are referencing the objects from array1, when the objects that start with 'C' or 'S' in array1 are mutated using the destructive method upcase!, the elements in array2 are also mutated. The output will be:"

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
