require 'pry'

hsh = {movie_star: 3, president: 2, mom: 1, dad: 4, grammy: 5}

result = hsh.select do |k, v|
  v <= 2
end

p result