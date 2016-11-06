require 'pry'

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

total_male_age = 0

# munsters.each do |name, m_or_f|
#  total_male_age += m_or_f["age"] if m_or_f["gender"] == "male"
# end
# p total_male_age

munsters.each do |name, m_or_f|
  puts "#{name} is a #{m_or_f["age"]} year old #{m_or_f["gender"]}"
end
