# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Further Exploration - Modify this method so the caller can request that the first character be downcased rather than upcased? If the first character is downcased, then the second character should be upcased, and so on. Hint: Use a keyword argument.

# Initial Solution
def staggered_case(string)
  staggered = []
  string.chars.each_with_index do |char, index|
    if index.odd?
      staggered << char.downcase
    else
      staggered << char.upcase
    end
  end
  staggered.join
end

# Further Exploration
def staggered_case1(string, start)
  result = ''
  start == 'up' ? need_upper = true : need_upper = false
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

# Test Cases
p staggered_case('I Love Launch School!')  # == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') # == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') # == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case1('I Love Launch School!', 'down')
p staggered_case1('ALL_CAPS', 'up')
p staggered_case1('ignore 77 the 444 numbers', 'down')
