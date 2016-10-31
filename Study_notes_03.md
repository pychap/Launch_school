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

Using Regex to check to see if input is an integer
```ruby
def integer?(string)
  /^\d+$/.match(string)
end
```

| title | link   | issue(s) to learn |
| :---- | :----  | :---------------- |
| Question 2 | [Q2](https://launchschool.com/lessons/263069da/assignments/6eba600c) | Scanning letters, building hash (problem is refrenced above) |