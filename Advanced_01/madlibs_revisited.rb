# Let's build another program using madlibs. We made a program like this in the easy exercises. This time, the requirements are a bit different. Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

require 'yaml'

STORIES = YAML.load_file("madlibs_stories.yml")
WORDS = {
  "VERB" => %w[makes crosses sniffs meows burns runs jumps skips hops farts flies lays],
  "NOUN" => %w[chicken family village dragon bunny birdie kitty doggy kid cat door],
  "ADJ" => %w[smelly ugly awesome popular colorful lazy black],
  "ADV" => %w[slowly lazily powerfully hastily crazily]
}

def clear_screen
  system('clear') || system('cls')
end

def madlibs(story)
  words = story.split
  WORDS.keys.each do |word|
    words.each do |lib|
      lib.gsub!(/#{word}/, WORDS[word].sample)
    end
  end
  clear_screen
  puts words.join(' ')
end

story = STORIES.values.sample
madlibs(story)
