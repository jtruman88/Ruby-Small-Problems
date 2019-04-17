# A continuation of the previous exercise. The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4. Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

def leap_year?(year)
  if year <= 1752 && year % 4 == 0
    leap_year = true
  else
    if year % 4  == 0
      leap_year = true
      if year % 100 == 0 && year % 400 != 0
        leap_year = false
      end
    else
      leap_year = false
    end
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


# Test cases

puts leap_year?(2016) # == true
puts leap_year?(2015) # == false
puts leap_year?(2100) # == false
puts leap_year?(2400) # == true
puts leap_year?(240000) # == true
puts leap_year?(240001) # == false
puts leap_year?(2000) # == true
puts leap_year?(1900) # == false
puts leap_year?(1752) # == true
puts leap_year?(1700) # == true
puts leap_year?(1) # == false
puts leap_year?(100) # == true
puts leap_year?(400) # == true
