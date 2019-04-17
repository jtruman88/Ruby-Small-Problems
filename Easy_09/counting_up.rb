# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument. You may assume that the argument will always be a valid integer that is greater than 0.

# Further Exploration - Food for thought: what do you think sequence should return if the argument is not greater than 0. For instance, what should you do if the argument is -1? Can you alter your method to handle this case?

# Initial Solution
def sequence(number)
  numbers = []
  1.upto(number) { |num| numbers << num }
  numbers
end

# Further Exploration
def sequence1(number)
  number < 1 ? (number..0).to_a : (1..number).to_a
end

# Test cases
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
puts
p sequence1(5) == [1, 2, 3, 4, 5] # ==> true
p sequence1(3) == [1, 2, 3] # ==> true
p sequence1(1) == [1] # ==> true
p sequence1(-5)  == [-5, -4, -3, -2, -1, 0] # ==> true
p sequence1(0)  == [0] # ==> true
p sequence1(-3)  == [-3, -2, -1, 0] # ==> true
