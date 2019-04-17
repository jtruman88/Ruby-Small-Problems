# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

# Initial Solution
def build_star(dimension)
  half = dimension / 2
  out = 0
  inner = half - 1
  star = '*'
  star_lines = []
  half.times do
    star_lines << "#{' ' * out}#{star}#{' ' * inner}#{star}#{' ' * inner}#{star}"
    out += 1
    inner -= 1
  end
  star_lines << "#{star * dimension}"
  half.times do
    out -= 1
    inner += 1
    star_lines << "#{' ' * out}#{star}#{' ' * inner}#{star}#{' ' * inner}#{star}"
  end
  puts star_lines
end

# Test cases
build_star(7)
=begin
*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *
=end
build_star(9)
=begin
*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *
=end
(11..19).each do |num|
  next if num.even?
  build_star(num)
end

=begin
psuedo

- define method, build_star, 1 parameter, dimension
  - need to set variables for the inner space, outter space, star and star_lines and half
    out = 0
    inner = dimension / 3
    star = '*'
    star_lines = []
    half = dimension / 2
  - Now we will need to print the top of the star by taking looping dimensions / 2 times, each time adding the outer space, star, inner space, star, inner space, to the star_lines, then incrementing outter, and decrementing, inner.
    half.times do
      star_lines << "#{' ' * out}#{star}#{' ' * inner}#{star}#{' ' * inner}#{star}"
      out += 1
      inner -= 1
    end
  - then add middle of star
    star_lines << "#{star * dimensions}"
  - then bottom half, with same but opposite of top
    half.times do
      star_lines << "#{' ' * out}#{star}#{' ' * inner}#{star}#{' ' * inner}#{star}"
      out -= 1
      inner += 1
    end
    puts star_lines
=end
