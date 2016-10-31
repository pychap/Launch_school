stoneage_rock = "The Flintstones Rock!"
n = 23

# 10.times do 
# 	# n = n += 1
# 	puts stoneage_rock.center(n += 1)
# end

# 10.times {|num| puts (" " * num) + stoneage_rock}

statement = "The Flintstones Rock!"
flintstones_hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do | letter |
  letter_frequency = statement.scan(letter).count
  flintstones_hash[letter] = letter_frequency if letter_frequency > 0
end
p flintstones_hash

# puts "the value of 40 + 2 is " + "#{(40 + 2)}"