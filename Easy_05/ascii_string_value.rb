# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

# Version 1
def ascii_value(str)
  str.chars.map { |char| char.ord }.reduce(0, :+)
end

# Version 2
def ascii_value2(str)
  total = 0
  str.chars.each { |char| total += char.ord }
  total
end

=begin

# Further Exploration - There is an Integer method such that: char.ord.mystery == char -  where mystery is our mystery method. Can you determine what method name should be used in place of mystery? What happens if you try this with a longer string instead of a single character?

The Method is `char.ord.chr == char`. if multiple charactersd are used it will be `false` as `#ord` only takes the ASCII value of the first character.
=end

# Test cases
puts ascii_value('Four score') # == 984
puts ascii_value('Launch School') # == 1251
puts ascii_value('a') # == 97
puts ascii_value('') # == 0
puts
puts ascii_value2('Four score') # == 984
puts ascii_value2('Launch School') # == 1251
puts ascii_value2('a') # == 97
puts ascii_value2('') # == 0
