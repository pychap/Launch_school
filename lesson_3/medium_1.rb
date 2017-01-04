require 'pry'
# stoneage_rock = "The Flintstones Rock!"
# n = 23

# 10.times do 
# 	# n = n += 1
# 	puts stoneage_rock.center(n += 1)
# end

# 10.times {|num| puts (" " * num) + stoneage_rock}

# statement = "The Flintstones Rock!"
# flintstones_hash = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do | letter |
#   letter_frequency = statement.scan(letter).count
#   flintstones_hash[letter] = letter_frequency if letter_frequency > 0
# end
# p flintstones_hash

# puts "the value of 40 + 2 is " + "#{(40 + 2)}"

# def titleize word
#   split_apart = word.split(//)
#   upper_cased = []
#   split_apart.each do |letter| 
#     upper_cased << letter.upcase
#   end
#   final = upper_cased.join
#   puts final
# end

# titleize("Now is the time for all good men to come to the aid of their party!")

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# "age_group" => "adult"
# munsters[key_counter].merge!({:"age_group" => "adult"})

# key[counter] == [['new_key' => 'new_value']]

# need to use map
# loop
# def sort_munsters(age)
#   case age
#   when age == 0..17 then "kid"
#   when age == 17..65 then "adult"
#   when age > 65 then "senior" 
#   else 
#     false
#   end
#   age
# end
# # now add to the munsters hash

# munsters.each+ do |key, value|
#   sort_munsters(value:("age", =>))
#  key[:key] << value.merge!([-1, "age_group" => "age"])
# end

# the REAL answer

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
p munsters