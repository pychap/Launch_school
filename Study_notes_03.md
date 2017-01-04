# Study notes 03
-------------  
Simple building a hash from an array ([example from this page](https://robots.thoughtbot.com/iteration-as-an-anti-pattern#build-a-hash-from-an-array))
```ruby
def signer_keys_and_uids
  result = {}

  signers.each do |signer|
    result[signer.key_id] = signer.uids
  end

  result
end
```  
Or, using `#inject`
```ruby
def signer_keys_and_uids
  signers.inject({}) do |result, signer|
    result.merge(signer.key_id => signer.uids)
  end
end
```

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
Taking this hash:  
```ruby
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
```  
Add to it `age_group` and the below sorta ages by kid, adult, senior  
```ruby
munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end  
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
| Question 9 | [Q2, Q8, Q9](https://launchschool.com/lessons/263069da/assignments/6eba600c) | Appending hashes, nested hashes(2, 9), code simplicity(2, 8, 9) |
| More than One | [Nail this](https://launchschool.com/exercises/fea51eb2) | Accessing arrays |
| Mulitple cars | [Nested hash](https://launchschool.com/exercises/8351bb9b) | foo |


### Comment to me from code review (on multiple `if` statements)
Try thinking about this method in terms of data; how would you arrange a data structure (a hash or an array) that encodes those 15 conditions as something that can easily be searched to determine if you have a winning combination. This is a common pattern in almost all computing languages: __when you have a lot of conditions that need to be tested, you build a data structure that can be searched instead__. This eliminates the wall of ifs, and simplifies the operational part of your code. __Learn this pattern early, and you will have a useful skill for life.__  
Note that the __data structure in ruby is generally defined as a constant at the top level of code,__ and the method is usually reduced to one or two lines that merely test whether there is a match in the constant structure.  

### Scope
Ruby variables and constants aren’t objects, but are references to objects. Assignment merely changes which object is bound to a particular variable.
