require 'pry'

array = ["apples", "bananas", "coconuts", "watermelons"]

hash = array.inject({}) { |h,fruit| h.merge(fruit => f(fruit)) }