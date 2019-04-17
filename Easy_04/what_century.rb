# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number. New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

def year_to_century(year)
  century = year.to_s
  return '1st' if century.length == 1 || century.length == 2
  if century.to_i > (century.to_i / 100) * 100
    century = (century.to_i / 100 + 1).to_s
  else
    century = (century.to_i / 100).to_s
  end
  if century[-1] == '0' || (century[-1] >= '4' && century[-1] <= '9')
    century += 'th'
  elsif century[-2..-1] != nil && (century[-2..-1] >= '11' && century[-2..-1] <= '13')
    century += 'th'
  else
    if century[-1] == '1'
      century += 'st'
    elsif century[-1] == '2'
      century += 'nd'
    else
      century += 'rd'
    end
  end
  century
end

def valid_integer?(num)
  begin
    Integer(num) && num.to_i > 0
  rescue ArgumentError
    false
  end
end


puts "Enter a year (AD) to get the century:"
year = gets.chomp
until valid_integer?(year)
  puts "Please enter a valid year (AD):"
  year = gets.chomp
end
puts"The year #{year} is in the #{year_to_century(year)} century."

puts "-- Test cases:"
puts year_to_century(2000) # == '20th'
puts year_to_century(2001) # == '21st'
puts year_to_century(1965) # == '20th'
puts year_to_century(256)  # == '3rd'
puts year_to_century(5)    # == '1st'
puts year_to_century(10103)# == '102nd'
puts year_to_century(1052) # == '11th'
puts year_to_century(1127) # == '12th'
puts year_to_century(11201)# == '113th'
