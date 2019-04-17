# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Further Exploration - Try modifying your solution so it prints the triangle upside down from its current orientation. Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

# Initial Solution
def triangle(int)
  int.times do |num|
    puts "#{' ' * (int - (num + 1))}#{'*' * (num + 1)}"
  end
end

# Further Exploration
def flipped_triangle(int)
 int.times do |num|
    puts "#{' ' * (num)}#{'*' * (int - num)}"
 end
end

def choose_triangle(int, corner)
  case corner
  when 'br'
    int.times do |num|
      puts "#{' ' * (int - (num + 1))}#{'*' * (num + 1)}"
    end
  when 'bl'
    int.times do |num|
      puts "#{'*' * (num + 1)}#{' ' * (int - (num + 1))}"
    end
  when 'tl'
    int.times do |num|
      puts "#{'*' * (int - num)}#{' ' * (num)}"
    end
  when 'tr'
    int.times do |num|
      puts "#{' ' * (num)}#{'*' * (int - num)}"
    end
  end
end

# Test cases
puts triangle(5)
=begin
    *
   **
  ***
 ****
*****
=end

p triangle(9)
=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end
p flipped_triangle(7)
puts "How big?"
size = gets.chomp.to_i
puts "Which corner?"
corner = gets.chomp
while size > 0
  p choose_triangle(size, corner)
  puts "How big?"
  size = gets.chomp.to_i
  puts "Which corner?"
  corner = gets.chomp
end
