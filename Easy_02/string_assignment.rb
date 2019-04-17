=begin
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

What does this print out? Can you explain these results?
=end

# It will print out:
BOB
BOB
# Because #upcase! is a destructive method. Therefore the object that both name and save_name are referencing was changed.
