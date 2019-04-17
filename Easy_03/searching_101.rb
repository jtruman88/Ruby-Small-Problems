# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

def valid_integer?(num)
  begin
    Integer(num)
  rescue ArgumentError
    false
  end
end

def prompt(message)
  "-- #{message}"
end

puts prompt("Please enter six integers below:")
numbers = []
number = nil
loop do
  number = gets.chomp
  until valid_integer?(number)
    puts prompt("Please enter an integer:")
    number = gets.chomp
  end
  break if numbers.length >= 5
  numbers << number.to_i
end

if numbers.include? number.to_i
  puts prompt("The number #{number} appears in #{numbers}.")
else
  puts prompt("The number #{number} does not appear in #{numbers}.")
end
