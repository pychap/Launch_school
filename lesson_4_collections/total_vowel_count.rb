require 'pry'

hsh = {
       first:  ['the', 'quick'], 
       second: ['brown', 'fox'], 
       third:  ['jumped'], 
       fourth: ['over', 'the', 'lazy', 'dog']
      }

count = 0
vowel_count = 0
hsh_keys = hsh.keys
total_vowel_count = 0


hsh.each do 
  break if count > 4

  current_key = hsh_keys[count]    # => :first
  current_value = hsh[current_key] # => ['the', 'quick']

  loop do 
    breaker_count = current_value.size
    break if breaker_count == 0

     # if array has 'a, e, i, o, u' vowel count += 1
    vowel_count += current_value.select { |v| v =~ /[aeiou]/ }.size
    total_vowel_count += vowel_count

    breaker_count -= 1
    break
    # binding.pry
  end
  # vowel_count += vowel
  count += 1
  total_vowel_count
end

puts "Total vowel count is #{total_vowel_count}"