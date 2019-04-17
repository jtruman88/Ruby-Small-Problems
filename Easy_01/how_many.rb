# Write a method that counts the number of occurrences of each element in a given array. Once counted, print each element alongside the number of occurrences.

=begin
START

DEFINE a method "count_occurances" with a single paramenter "words"
  - SET a new empty hash, "occurances"
  - LOOP through "words", check if each word is a key in "occurances"
  - IF yes, add 1 to the value
  - IF no, set the value to 1
  - RETURN "occurances"

PRINT "count_occurances" with test cases

END
=end

def count_occurrences(words)
  occurances = {}
  words.each do |word|
    if occurances[word]
      occurances[word] += 1
    else
      occurances[word] = 1
    end
  end
    puts occurances
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
food = %w(fries ham cheese ham cheese fries burger shake banana shake ham strawberry)
count_occurrences(food)
puts
count_occurrences(vehicles)
