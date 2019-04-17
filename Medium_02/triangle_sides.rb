=begin
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.
=end

def triangle(*sides)
  sides = sides.sort
  if sides.length != 3 || sides.any? { |side| side <= 0 } ||
     sides[0..1].inject(:+) <= sides[-1]
    return :invalid
  elsif sides.reduce(:+) / sides.length == sides[0]
    :equilateral
  elsif sides[0] == sides[1] || sides[1] == sides[2]
    :isosceles
  else
    :scalene
  end
end

# Test cases
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid


=begin
Psuedo

define method, triangle, with a splat parameter, *sides
  - set sides = sides
  - Set variable, type, = ''
  - if there are less than 3 sides, or if any of the sides equal 0, or if the two smallest and less than the greatest, :invalid
    - if sides.length != 3 || sides.any? { |side| side <= 0 } ||
      sides[0..1].inject(:=) <= sides[-1]
      return :invalid
    end
  - if all sides are equal, :equilateral
   - if sides.reduce(:+) / sides.length == sides[0]
      :equilateral
  - if two sides are the same, :isosceles
    - elsif sides[0] == sides[1] ||
            sides[1] == sides[2]
        :isosceles
  - otherwise, if it has passed the edge cases, and is not one of the other two, it must be a scalene
    else
      :scalene
=end
