# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

puts "--Enter the first number:"
num1 = gets.chomp.to_i
puts "--Enter the second number:"
num2 = gets.chomp.to_i

operations = [:+, :-, :*, :/, :%, :**,]

operations.each do |op|
  puts "-- #{num1} #{op} #{num2} = #{[num1, num2].reduce(op)}"
end
