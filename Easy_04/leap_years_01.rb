# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400. Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

def leap_year?(year)
  if year % 4  == 0
    leap_year = true
    if year % 100 == 0 && year % 400 != 0
      leap_year = false
    end
  else
    leap_year = false
  end
  leap_year
end

def valid_integer?(num)
  begin
    Integer(num) && num.to_i > 0
  rescue ArgumentError
    false
  end
end

puts "Enter a year > 0 to find out if it's a leap year:"
year = gets.chomp
until valid_integer?(year)
  puts "Please enter a valid year:"
  year = gets.chomp
end

if leap_year?(year.to_i)
  puts "#{year} is a leap year."
else
  puts "#{year} is NOT a leap year."
end

# Test Cases
=begin
puts leap_year?(2016) # == true
puts leap_year?(2015) # == false
puts leap_year?(2100) # == false
puts leap_year?(2400) # == true
puts leap_year?(240000) # == true
puts leap_year?(240001) # == false
puts leap_year?(2000) # == true
puts leap_year?(1900) # == false
puts leap_year?(1752) # == true
puts leap_year?(1700) # == false
puts leap_year?(1) # == false
puts leap_year?(100) # == false
puts leap_year?(400) # == true
=end
