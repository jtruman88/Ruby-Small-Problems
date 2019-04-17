# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Further Exploration - Modify this method so the caller can determine whether non-alphabetic characters should be counted when determining the upper/lowercase state. That is, you want a method that can perform the same actions that this method does, or operates like the previous version. Hint: Use a keyword argument.

# Initial Solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-zA-Z]/
      need_upper ? result += char.upcase : result += char.downcase
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# Further Exploration
def staggered_case1(string, include = false)
  result = ''
  upper = true
  string.chars.each_with_index do |char, index|
    if include
      index.even? ? result += char.upcase : result += char.downcase
    else
      if char =~ /[a-z]/i
        upper ? result += char.upcase : result += char.downcase
        upper = !upper
      else
        result += char
      end
    end
  end
  result
end

# Test Cases
p staggered_case('I Love Launch School!')  == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS')  == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers')  == 'IgNoRe 77 ThE 444 nUmBeRs'
p staggered_case1('I Love Launch School!', true)  == 'I LoVe lAuNcH ScHoOl!'
p staggered_case1('ALL CAPS', false)  == 'AlL cApS'
p staggered_case1('ignore 77 the 444 numbers', true)  == 'IgNoRe 77 ThE 444 NuMbErS'
