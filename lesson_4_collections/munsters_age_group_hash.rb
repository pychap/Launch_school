require 'pry'

# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

kid = 0..17   # (0..17).include?(9) => true
adult = 18..64
senior = 65
munsters_keys = munsters.keys


case munsters
when munsters_keys[index]["age"].include?(kid)
     munsters_keys[index] = ["age_group"]["kid"]
when munsters_keys[index]["age"].include?(adult)
     munsters_keys[index] = ["age_group"]["adult"]
when munsters_keys[index]["age"].include?(senior)
     munsters_keys[index] = ["age_group"]["senior"]
  else
    break
end


{"Marilyn" => { "age" => 23, "gender" => "female"}}