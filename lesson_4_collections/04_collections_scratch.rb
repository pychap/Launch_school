require 'pry'

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
  binding.pry
end