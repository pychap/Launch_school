require 'pry'

hsh = {movie_star: 3, president: 2, mom: 1, dad: 4, grammy: 5}


munsters = {
  "Herman" =>  { "age" => 32, "gender" => "male" },
  "Lily" =>    { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" =>   { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


def amethod(param)
	param += " universe"
	param.object_id
	binding.pry
	# param + " universe"
	# str.object_id
	param << " world"
end

str = "hello"
amethod(str)

str.object_id
binding.pry

puts str

result = hsh.select do |k, v|
  v <= 2
end

p result
