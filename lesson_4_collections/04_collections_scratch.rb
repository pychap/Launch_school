require 'pry'

arr = [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]

def do_it(foo)
  foo.map do |element1|
    element1.each do |element2|
      element2.partition do |element3|
        binding.pry
        element3.size > 0
      end
    end
  end
end

p do_it(arr)

[1, 2, 3].each do |num|
  puts num += 1
end