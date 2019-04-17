# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Further Exploration - Try solving this problem using Array#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).

# Initial Solution
def running_total(numbers)
  index = 1
  while index < numbers.length
    numbers[index] = numbers[index] + numbers[index - 1]
    index += 1
  end
  numbers
end

# Further Exploration #1
def running_total1(numbers)
  total = 0
  numbers.each_with_object([]) { |num, sums| sums << total += num }
end

# Further Exploration #2
def running_total2(numbers)
  return numbers if numbers.empty?
  totals = []
  totals << numbers.reduce do |sum, num|
    totals << sum
    sum + num
  end
end

# Test cases
p running_total([2, 5, 13]) # == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total([3]) # == [3]
p running_total([]) # == []
puts
p running_total1([2, 5, 13]) # == [2, 7, 20]
p running_total1([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total1([3]) # == [3]
p running_total1([]) # == []
puts
p running_total2([2, 5, 13]) # == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total2([3]) # == [3]
p running_total2([]) # == []
