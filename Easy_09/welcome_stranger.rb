# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

# Further Exploration - This method doesn't actually pass rubocop! What is the best way to shorten the lines in this method so it doesn't exceed the 80 maximum characters to a line?

# Initial Solution
def greetings(names, titles)
  "Hello, #{names.join(' ')}! Nice to have a #{titles[:title]} #{titles[:occupation]} around."
end

# Further Exploration
def greetings1(names, titles)
  name = names.join(' ')
  title = "#{titles[:title]} #{titles[:occupation]}"
  "Hello, #{name}! Nice to have a #{title} around."
end

# Test cases / Example
=begin
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.
=end
p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
p greetings1(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
