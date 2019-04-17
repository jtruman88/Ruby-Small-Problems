# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Further Exploration - There are a few other characters that should be matching as well. Square brackets and curly brackets normally come in pairs. Quotation marks(single and double) also typically come in pairs and should be balanced. Can you expand this method to take into account those characters?

# Initial Solution
def balanced?(string)
  open = 0
  closed = 0
  string.chars.each do |char|
    if char == '(' && closed <= open
      open += 1
    elsif char == ')'
      closed += 1
    end
  end
  open == closed
end

# Further Exploration
def balanced1?(string)
  brackets = {
    parens: { open: '(', closed: ')', count: 0 },
    square: { open: '[', closed: ']', count: 0 },
    curly: { open: '{', closed: '}', count: 0 }
  }
  type_balanced?(string, brackets[:parens]) &&
    type_balanced?(string, brackets[:square]) &&
    type_balanced?(string, brackets[:curly])
end

def type_balanced?(string, type)
  string.each_char do |char|
    if char == type[:open]
      type[:count] += 1
    elsif char == type[:closed]
      type[:count] -= 1
    end
    return false if type[:count] < 0
  end
  type[:count].zero?
end

# Test cases
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
puts
p balanced1?('What [(is)] this?') == true
p balanced1?('What ]is)[] this?') == false
p balanced1?('What (is this?') == false
p balanced1?('((What) {(is} this))?') == true
p balanced1?('((What)) ](is this))?') == false
p balanced1?('[Hey]!') == true
p balanced1?('[Hey)!') == false
p balanced1?('What ((is))) up(') == false

# Psuedo
=begin
define method, balanced?, with one parameter, string
  - Need to count pairs of parentheses
    - Only counts if it starts with an open '('
    - Loop through each charcter in string.
    - If one of the chars = '(' and closed <= open, add 1 to open
    - elsif char = ')' add 1 to closed
=end
