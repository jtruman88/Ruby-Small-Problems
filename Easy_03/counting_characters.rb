# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

puts "Please enter a word or multiple words:"
input = gets.chomp
chars = input.split('')
chars.delete(' ')
puts "There are #{chars.length} characters in '#{input}'."
