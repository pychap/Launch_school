# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.any? { |key, value|
#   if key == "Spot"
#     puts "Crazy, 'cause Spot isn't in the array!"
#   else
#     puts 'false'
#   end
#      }

# ages.each do |key, value|
#   if key == "Spot"
#     puts "Crazy, 'cause Spot isn't in the array!"
#   else
#     puts 'false'
#   end
# end
# puts ages.has_key?("Spot")
# puts ages.include?("Spot")
# puts ages.member?("Spot")

#2
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# foo = 0
# ages.each_value do |value|
#   puts foo += foo[value]
# end
# right answer - who's supposed to know this shit at my stage? (below) baaaha
# puts ages.values.inject(:+)

# 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if{|key, value| value >= 100}
