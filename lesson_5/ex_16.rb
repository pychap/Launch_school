require 'pry'

def uuid_creator
  letters = ('a'...'f').to_a
  nums = (1...9).to_a
  base_set = letters.concat(nums)
  build_uuid = []
  sections = [8, 4, 4, 4, 12]
  new_uuid = ''

  sections.each_with_index do |item, idx|
    while item > 0
     build_uuid << base_set.sample
     # binding.pry
      item -= 1
    end
    new_uuid << build_uuid.join + "-"
    binding.pry
  end
end

uuid_creator