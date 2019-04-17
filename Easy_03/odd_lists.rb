# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Further Exploration - Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array. Try to solve this exercise in at least 2 additional ways.

# initial answer
def oddities(list)
  odd_list = []
  list.each_with_index do |item, index|
    odd_list << item if index % 2 == 0
  end
  odd_list
end

# Further Exploration

# Companion method

def evensies(list)
  even_list = []
  list.each_with_index do |item, index|
    even_list << item if index % 2 == 1
  end
  even_list
end

# First additional way

def oddities_2(list)
  odd_list = []
  index = 0
  while index < list.length
    odd_list << list[index]
    index += 2
  end
  odd_list
end

# Second additional way

def oddities_3(list)
  odd_list = []
  index = 0
  for item in list
    odd_list << list[index] if index % 2 == 0
    index += 1
  end
  odd_list
end

# Test cases
p oddities([2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
puts
p oddities_2([2, 3, 4, 5, 6])
p oddities_2(['abc', 'def'])
p oddities_2([123])
p oddities_2([])
puts
p oddities_3([2, 3, 4, 5, 6])
p oddities_3(['abc', 'def'])
p oddities_3([123])
p oddities_3([])
puts
p evensies([2, 3, 4, 5, 6])
p evensies(['abc', 'def'])
p evensies([123])
p evensies([])
