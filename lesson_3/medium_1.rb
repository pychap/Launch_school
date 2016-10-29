stoneage_rock = "The Flintstones Rock!"
n = 23

# 10.times do 
# 	# n = n += 1
# 	puts stoneage_rock.center(n += 1)
# end

# 10.times {|num| puts (" " * num) + stoneage_rock}

statement = "The Flintstones Rock!"
# break into an array %w?
# new_statement = statement.chars
noodle = nil
statement.each_char{|c| c = noodle}
puts noodle