def mess_with_vars(one, two, three)
  puts "In the method...\n\n"
  one = two
  puts "One #{one} #{one.object_id}"
  two = three
  puts "Two #{two} #{two.object_id}"
  three = one
  puts "Three #{three} #{three.object_id}...\n\n"
  # puts "Inside the method: One #{one.object_id}, Two #{two.object_id}, Three #{three.object_id}"
end

one = "one"
two = "two"
three = "three"

puts "Before the method call: \n\n one #{one.object_id},\n\n two #{two.object_id},\n\n three #{three.object_id}...\n\n"
# puts "Before the method call: Three #{three.object_id}"

mess_with_vars(one, two, three)

# puts "After the method call: One #{one.object_id}, Two #{two.object_id}, Three #{three.object_id}"

puts "one is: #{one} with object id of #{one.object_id}"
puts "two is: #{two} with object id of #{two.object_id}"
puts "three is: #{three} with object id of #{three.object_id}"
