# Study notes 03
-------------
check to see if input is an integer
```ruby
def integer?(string)
  /^\d+$/.match(string)
end
```