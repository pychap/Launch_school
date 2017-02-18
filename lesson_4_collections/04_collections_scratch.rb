require 'pry'

# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}
total_male_ages = 0

munsters.each do |name, details|
  case 
  when details["gender"] == "male"
    total_male_ages += details["age"]
  end
  total_male_ages
end

p total_male_ages