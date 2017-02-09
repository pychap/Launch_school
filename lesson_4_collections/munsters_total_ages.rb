require 'pry'

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}
total_male_ages = 0

munsters.each do |name, details|
  case  # case probably overkill but wanted keep familiarity with it
  when details["gender"] == "male"
    total_male_ages += details["age"]
  end
  total_male_ages
end

p total_male_ages