# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

def friday_13th(year)
  unlucky_days = 0
  day = Time.new(year)
  one_day = 60 * 60 * 24
  until day.year == year + 1
    unlucky_days += 1 if day.friday? && day.day == 13
    day += one_day
  end
  unlucky_days
end

# Test cases
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

=begin
psuedo

define method, friday_13th, one parameter, year
  - set variable to hold unlucky days
    unlucky_days = 0
  - set variable to hold new day
    day = Time.new(year)
  - set variable to increment by one day
    one_day = 60 * 60 * 24
  - loop until year ends
    until day.year == year + 1
  - if the day is a friday and the day is 13, add one to unlucky
    unlucky_days += 1 if day.friday? && day.day == 13
  - add one day to day at the end of loop
    day += one_day
  - return unlucky_days
=end
