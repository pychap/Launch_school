require 'pry'

# Print out the name, age and gender of each family member.
# (Name) is a (age) year old (male or female).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each do |name, sub_hash_value|
  munster_name = ''
  age = 0
  gender = ''
  munster_name = name
  age = sub_hash_value["age"]
  gender = sub_hash_value["gender"]
  puts "#{munster_name} is a #{age} year old #{gender}"
end