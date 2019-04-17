# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# Further Exploration - Try modifying your solution or our solution so it prints only the outline of the diamond:
=begin
diamond(5)
  *
 * *
*   *
 * *
  *
=end

# Initial Solution
def diamond(length)
  diamonds = (1..length).select { |num| num.odd? }
  shape_array = []
  spaces = length / 2
  length.times do |num|
    index = length / 2 - spaces.abs
    shape_array << "#{' ' * spaces.abs}#{'*' * diamonds[index]}"
    spaces -= 1
  end
  shape_array
end

# Further Exploration
def hollow_diamond(length)
  midspace = (1..length).select { |num| num.odd? }
  shape_array = []
  spaces = length / 2
  length.times do |num|
    if num == 0 || num == length - 1
      shape_array << "#{' ' * spaces.abs}*"
    else
      index = length / 2 - spaces.abs
      shape_array << "#{' ' * spaces.abs}*#{' ' * (midspace[index] - 2)}*"
    end
    spaces -= 1
  end
  shape_array
end

# Examples
shape = diamond(1)
puts shape
# *
shape = diamond(3)
puts shape
=begin
 *
***
 *
=end
shape = diamond(9)
puts shape
=begin
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
=end
shape = hollow_diamond(7)
puts shape
