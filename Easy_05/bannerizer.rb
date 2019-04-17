# Write a method that will take a short line of text, and print it within a box.

# Initial Solution
def print_in_box(string)
  boxed_edge = "+#{'-' * (string.length + 2)}+"
  boxed_space = "|#{" " * (string.length + 2)}|"
  boxed_string = "| #{string} |"
  "#{boxed_edge}\n#{boxed_space}\n#{boxed_string}\n#{boxed_space}\n#{boxed_edge}"
end

# Further Exploration Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.

# Further exploration # 1 - Truncate
def print_in_box2(string)
  string.slice!(76..-1) if string.length > 76
  boxed_edge = "+#{'-' * (string.length + 2)}+"
  boxed_space = "|#{" " * (string.length + 2)}|"
  boxed_string = "| #{string} |"
  "#{boxed_edge}\n#{boxed_space}\n#{boxed_string}\n#{boxed_space}\n#{boxed_edge}"
end

# Further exploration # 2 - Wrapping
# Not the most DRY code... but it works
def print_in_box3(string)
  if string.length > 76
    strings = []
    while string.length > 0
      if string.length < 76
        strings << string.slice!(0..-1)
      else
        strings << string.slice!(0..75)
      end
    end
      puts "+#{'-' * 78}+"
      puts "|#{' ' * 78}|"
      strings.each do |string|
        if string.length < 76
        puts "| #{string}#{' ' * (76 - string.length)} |"
        else
          puts "| #{string} |"
        end
      end
      puts "|#{' ' * 78}|"
      puts "+#{'-' * 78}+"
  else
    boxed_edge = "+#{'-' * (string.length + 2)}+"
    boxed_space = "|#{" " * (string.length + 2)}|"
    boxed_string = "| #{string} |"
    "#{boxed_edge}\n#{boxed_space}\n#{boxed_string}\n#{boxed_space}\n#{boxed_edge}"
  end
end

# Test cases
puts print_in_box('To boldly go where no one has gone before.')
=begin
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end
puts print_in_box('')
=begin
+--+
|  |
|  |
|  |
+--+
=end
puts print_in_box2('To boldly go where no one has gone before. Or at least no man has wanted to go anyway...')
puts print_in_box3("To boldly go where no one has gone before. Or at least no man has wanted to go anyway...Well okay, so people have wanted to go there but no one has really ever had the guts to go. But we're going now!!!")
