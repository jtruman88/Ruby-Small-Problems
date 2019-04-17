# Build a program that displays when the user will retire and how many years she has to work till retirement.


def valid_integer?(num)
  begin
    Integer(num) && num.to_i > 0
  rescue ArgumentError
    false
  end
end

puts "What is your age?"
age = gets.chomp
until valid_integer?(age)
  puts "I don't think that's a valid age...try again:"
  age = gets.chomp
end

puts "At what age would you like to retire?"
retire_age = gets.chomp
until valid_integer?(retire_age)
  puts "I don't think that's a valid age...try again:"
  retire_age = gets.chomp
end

years_to_retire = retire_age.to_i - age.to_i
current_year = Time.now.year
retirement_year = current_year + years_to_retire

puts "--It's #{current_year}. You will retire in #{retirement_year}."
puts "--Only #{years_to_retire} years left!!!"
