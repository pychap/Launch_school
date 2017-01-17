require 'pry'


{ a: 'anteater', b: 'bear' }.select do |key, value|
  if value.size > 3
    value
  end
end