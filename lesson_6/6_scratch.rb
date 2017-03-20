require 'pry'



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