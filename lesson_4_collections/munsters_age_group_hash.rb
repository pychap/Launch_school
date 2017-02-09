require 'pry'

# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters_keys = munsters.keys

munsters_keys.each do |m_key|
  case munsters
    when (0..17).include?(munsters[m_key]["age"])
         munsters << munsters[m_key]["age_group"] = "kid"
         binding.pry
    when (18..64).include?(munsters[m_key]["age"])
         binding.pry
         munsters << munsters[m_key]["age_group"] = "adult"
    when munsters[m_key]["age"] >= 65
         munsters << munsters[m_key]["age_group"] = "senior"
    else
         puts "sorry, no values changed."
  end
  munsters
end

p munsters