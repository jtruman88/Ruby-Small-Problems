# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight. Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439. You may not use ruby's Date and Time methods.

# Further Exploration - How would these methods change if you were allowed to use the Date and Time classes?

# Initial Solutions
def after_midnight(time)
  times = time.split(':')
  ((times[0].to_i % 24) * 60) + (times[1].to_i)
end

def before_midnight(time)
  times = time.split(':')
  ((times[0].to_i % 24) * 60) - (times[1].to_i)
end

# Further Exploration
def after_midnight2(time)
  times = time.split(':').map(&:to_i)
  midnight = Time.new(Time.new.year, Time.new.month, Time.new.day, 0, 0, 0)
  time_now = Time.new(Time.new.year, Time.new.month, Time.new.day, (times[0] % 24), times[1])
  ((time_now - midnight) / 60).to_i
end

def before_midnight2(time)
  times = time.split(':').map(&:to_i)
  midnight = Time.new(Time.new.year, Time.new.month, Time.new.day, 0, 0, 0)
  time_now = Time.new(Time.new.year, Time.new.month, Time.new.day, (times[0] % 24), times[1])
  ((midnight - (midnight - ((time_now.hour * 60 * 60) - (time_now.min * 60)))) / 60).to_i
end

# Test cases
puts after_midnight('00:00') # == 0
puts before_midnight('00:00') # == 0
puts after_midnight('12:34') # == 754
puts before_midnight('12:34') # == 686
puts after_midnight('24:00') # == 0
puts before_midnight('24:00') # == 0
puts
puts after_midnight2('00:00')
puts before_midnight2('00:00')
puts after_midnight2('12:34')
puts before_midnight2('12:34')
puts after_midnight2('24:00')
puts before_midnight2('24:00')
