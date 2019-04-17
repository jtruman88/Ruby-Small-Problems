# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.



def real_palindrome?(phrase)
  chars = []
  phrase.split('').each do |char|
    if char >= 'A' && char <= 'Z'
      chars << char.downcase
    end
    if char >= 'a' && char <= 'z' || char >= '0' && char <= '9'
      chars << char
    end
  end
  chars == chars.reverse
end



# Test cases
puts real_palindrome?('madam') # == true
puts real_palindrome?('Madam') # == true
puts real_palindrome?("Madam, I'm Adam") # == true
puts real_palindrome?('356653') # == true
puts real_palindrome?('356a653') # == true
puts real_palindrome?('123ab321') # == false
