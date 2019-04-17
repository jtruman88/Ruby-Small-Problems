=begin
A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.
=end

def triangle(*angles)
  case
  when angles.length != 3 ||
       angles.any? { |ang| ang <= 0 } ||
       angles.reduce(:+) != 180
    :invalid
  when angles.any? { |ang| ang == 90 }
    :right
  when angles.all? { |ang| ang < 90 }
    :acute
  when angles.any? { |ang| ang > 90 }
    :obtuse
  end
end

# test cases
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

=begin
define method, triangle, with *angles parameter
 - if the angles do not add up to 180 or any of the angles are less than 0, :invalid
    - case
      when angles.length != 3 ||
          angles.any? { |ang| ang <= 0 } ||
          angles.reduce(:+) != 180
        :invalid
  - if any of the angles = 90, :right
      when angles.any? { |ang| ang == 90 }
        :right
  - if all angles < 90, :acute
      when angles.all? { |ang| ang < 90 }
        :acute
  - if one angle is great than 90, :obtuse
      when angles.any? { |ang| ang > 90 }
        :obtuse
      end
=end
