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
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# ages.delete_if{|key, value| value >= 100}

# 4
# munsters_description = "The Munsters are creepy in a good way."
# puts munsters_description.capitalize
# puts munsters_description.swapcase
# puts munsters_description.downcase
# puts munsters_description.upcase

# 5
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# p ages.merge(additional_ages)

# 6
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# puts ages.values.min

# 7
# advice = "Few things in life are as important as house training your pet dinosaur."
# puts advice.include?("Dino")
# puts advice.match("Dino")

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# 8
# puts flintstones.find_index {|x| x.start_with?("Be")}
# 9
# puts flintstones.map { | item | item.slice(0, 3)}

# 10
p flintstones.map! { | item | item[0, 3] }
