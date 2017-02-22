require 'pry'

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    binding.pry
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

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

