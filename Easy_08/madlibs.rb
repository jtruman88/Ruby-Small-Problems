# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result. Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

loop do
  puts "Let's make a madlib!"
  puts "Enter a noun:"
  noun = gets.chomp
  puts "Enter a verb:"
  verb = gets.chomp
  puts "Enter an adjective:"
  adjective = gets.chomp
  puts "Enter an adverb:"
  adverb = gets.chomp
  
  puts "Watch out for that #{adjective} #{noun}!"
  puts "It sure can #{verb} #{adverb}."
  puts
  puts "Do you want to do another one? 'y' or 'n'"
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end