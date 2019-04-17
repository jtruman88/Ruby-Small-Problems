# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Further Exploration - Our solution works with any non-negative number of degrees, including values outside the range 0 to 360. Does yours? While our solution works with the expanded range of non-negative numbers, it fails with negative numbers. For instance, dms(-76.73) returns -77°16'12", which is incorrect. Update our solution so that it works with negative values as well as non-negative values.

DEGREE = "\xC2\xB0"

# Initial solution and Further Exploration
def dms(angle)
  degrees = angle.to_i % 360
  minutes = ((angle % 1) * 60).to_i
  seconds = ((((angle % 1) * 60) % 1) * 60).to_i
  format("%01d#{DEGREE}%02d\'%02d\"", degrees, minutes, seconds)
end

# Test cases
puts dms(30) # == %(30°00'00")
puts dms(76.73) # == %(76°43'48")
puts dms(254.6) # == %(254°36'00")
puts dms(93.034773) # == %(93°02'05")
puts dms(0) # == %(0°00'00")
puts dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(720)
puts dms(-76.73)
