=begin
The following code:

def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

is expected to print:

[]
[21]
[9, 16]
[25, 36, 49]
However, it does not. Obviously, there is a bug. Find and fix the bug, then explain why the buggy program printed the results it did.
=end

def my_method(array)
  if array.empty?
    []
  elsif array.length > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# Since the elsif coniditonal was missing on the first line, ruby looked for it on the second line and found the mapm which was used as the conitional. Since the map block was used, there was actually no code to return on the elsif branch. So, as long as the rray was not empty, it would return nil, since the elsif branch had nothing else to return.