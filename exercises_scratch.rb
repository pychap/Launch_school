require 'pry'
# require 'seeing_is_believing'



{ a: "ant", b: "bear", c: "cat" }.key?(:a)
# => true
{ a: "ant", b: "bear", c: "cat" }.has_key?(:a)
# => true

{ a: "ant", b: "bear", c: "cat" }.value?("bear")
# => true