# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight. Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input. You may not use ruby's Date and Time classes.

# Further Exploration - How would you approach this problem if you were allowed to use ruby's Date and Time classes? Suppose you also needed to consider the day of week? (Assume that delta_minutes is the number of minutes before or after midnight between Saturday and Sunday; in such a method, a delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)

# Initial solution
def time_of_day(minutes)
  "#{format('%02d', ((minutes / 60) % 24))}:#{format('%02d', (minutes % 60))}"
end

# Further exploration - Gives day and time minus minutes relative to time of execution
def time_of_weekday(minutes)
  time_now = Time.new
  time_then = time_now + (minutes * 60)
  "#{time_then.strftime('%A, %H:%M')}"
end

# Test Cases
puts time_of_day(0) # == "00:00"
puts time_of_day(-3) # == "23:57"
puts time_of_day(35) # == "00:35"
puts time_of_day(-1437) # == "00:03"
puts time_of_day(3000) # == "02:00"
puts time_of_day(800) # == "13:20"
puts time_of_day(-4231) # == "01:29"
puts
puts time_of_weekday(0)
puts time_of_weekday(-3)
puts time_of_weekday(35)
puts time_of_weekday(-1437)
puts time_of_weekday(3000)
puts time_of_weekday(800)
puts time_of_weekday(-4231)
