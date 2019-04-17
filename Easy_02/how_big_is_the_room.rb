# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet. Note: 1 square meter == 10.7639 square feet Do not worry about validating the input at this time.

# Further Exploration - Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

FEET_TO_METERS = 0.3048
FEET_TO_INCHES = 12.0
FEET_TO_CENT = 30.48
puts "What is the length of the room in feet?"
length = gets.chomp.to_f
puts "What is the width of the room in feet?"
width = gets.chomp.to_f
area_meters = format('%.2f', (length * width * FEET_TO_METERS))
area_feet = format('%.2f', (length * width))
area_inches = format('%.2f', (length * width * FEET_TO_INCHES))
area_cent = format('%.2f', (length * width * FEET_TO_CENT))
puts "Please find the area of the room below in different units of measurment:"
puts "--Square feet:        #{area_feet}"
puts "--Square meters:      #{area_meters}"
puts "--Square inches:      #{area_inches}"
puts "--Square centimeters: #{area_cent}"
