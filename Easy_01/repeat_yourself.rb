# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

=begin
START

DEFINE method repeat with two parameters(string, number)
  - Use TIMES on number to PRINT string.

call method with two arguments

END
=end

def repeat(string, number)
  number.times { puts string }
end

repeat("Watch out!", 2)
repeat("Hello?", 4)
repeat("Who's there?", 3)
