# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Further Exploration - The compute_sum and compute_product methods are simple and should be familiar. A more rubyish way of computing sums and products is with the Enumberable#inject method. #inject is a very useful method, but if you've never used it before, it can be difficult to understand. Take some time to read the documentation for #inject. (Note that all Enumerable methods can be used on Array.) Try to explain how it works to yourself. Try to use #inject in your solution to this problem.

def prompt(message)
  "-- #{message}"
end

def valid_integer?(num)
  begin
    Integer(num) && num.to_i > 0
  rescue ArgumentError
    false
  end
end

puts prompt("Please enter an integer greater than 0:")
number = gets.chomp
until valid_integer?(number)
  puts prompt("Please enter an integer greater than 0:")
  number = gets.chomp
end

puts prompt("Enter 's' to compute the sum, 'p' to compute the product")
operation = gets.chomp.downcase
until operation == 's' || operation == 'p'
  puts prompt("Please enter 's' or 'p':")
  operation = gets.chomp.downcase
end

if operation == 's'
  total = (1..number.to_i).reduce(:+)
  puts "The sum of the integers between 1 and #{number} is #{total}."
else
  total = (1..number.to_i).reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{total}."
end
