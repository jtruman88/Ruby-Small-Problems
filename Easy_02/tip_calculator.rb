# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# Further Exploration - Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. Modify your solution so it always prints the results with 2 decimal places. Hint: You will likely need Kernel#format for this.

# Instructions did not say to NOT validate input
def valid_number?(num)
  valid_integer?(num) || valid_float?(num)
end

def valid_integer?(num)
  begin
    Integer(num) && num.to_i >= 0
  rescue ArgumentError
    false
  end
end

def valid_float?(num)
  begin
    Float(num) && num.to_f >= 0.0
  rescue ArgumentError
    false
  end
end

puts "--What is the total of the bill?"
bill = gets.chomp
until valid_number?(bill)
  puts "--Please enter a valid number:"
  bill = gets.chomp
end
puts "--What is the tip percentage?"
tip = gets.chomp
until valid_number?(tip)
  puts "--Please enter a valid number:"
  tip = gets.chomp
end
tip = format('%.2f', ((tip.to_f * bill.to_f) / 100))

total = format('%.2f', (bill.to_f + tip.to_f))

puts "--The tip is $#{tip}."
puts "--The total is $#{total}."
