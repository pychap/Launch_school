str = "joe's favorite color is blue"

# change the 1st letter of each word to uppercase

new_arr = str.split(' ')

title_case = new_arr.map do |word| 
  word[0].upcase + word[1..-1]
end

p title_case