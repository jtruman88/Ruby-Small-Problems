# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged. You may not use String#swapcase; write your own version of this method.

def swapcase(string)
  index = 0
  while index < string.length
    if string[index] == string[index].downcase
      string[index] = string[index].upcase
    elsif string[index] == string[index].upcase
      string[index] = string[index].downcase
    end
    index += 1
  end
  string
end

# Test Cases
p swapcase('CamelCase')  == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV')  == 'tONIGHT ON xyz-tv'
