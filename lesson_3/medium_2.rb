require 'pry'

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# total_male_age = 0

# munsters.each do |name, m_or_f|
#  total_male_age += m_or_f["age"] if m_or_f["gender"] == "male"
# end
# p total_male_age

# munsters.each do |name, m_or_f|
#   puts "#{name} is a #{m_or_f["age"]} year old #{m_or_f["gender"]}"
# end
sentence = "Humpty Dumpty sat on a wall."
# sentence_arr = []
# sentence_arr = sentence.split
# new_array = []
# sentence_arr.each do | index |
#   new_array << index
# end
# almost_there = new_array.reverse
# puts almost_there.join(' ') + '.'

# words = sentence.split(/\W/)
# words.reverse!
# backwards_sentence = words.join(' ') + '.'
# p backwards_sentence

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# p mess_with_demographics(munsters)
# p munsters

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end


puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

puts rps("paper", "rock")
# 1st call: rps("rock", "paper") => paper
# 2nd call: rps("rock", "scissors") => rock
# 3rd call: rps(rps("paper", "rock"), "rock") => paper
