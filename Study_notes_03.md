# Study notes 03
-------------  
Familiarize yourself with this one, creating a hash that expresses the frequency with which each letter occurs in the string; The Flintstones Rock  
```ruby
statement = "The Flintstones Rock!"
flintstones_hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do | letter |
  letter_frequency = statement.scan(letter).count
  flintstones_hash[letter] = letter_frequency if letter_frequency > 0
end
p flintstones_hash
```

Using Regex to check to see if input is an integer
```ruby
def integer?(string)
  /^\d+$/.match(string)
end
```

| title | link   | issue(s) to learn |
| :---- | :----  | :---------------- |
| Question 2 | [Q2](https://launchschool.com/lessons/263069da/assignments/6eba600c) | Scanning letters, building hash (problem is refrenced above) |