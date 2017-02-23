require 'pry'

def uuid_creator
  letters = ('a'..'f').to_a
  nums = (1..9).to_a
  base_set = letters.concat(nums)
  build_uuid = []
  sections = [8, 4, 4, 4, 12]
  new_uuid = ''

  sections.each_with_index do |item, idx|
    item.times do
     build_uuid << base_set.sample
    end
    # binding.pry
    if idx < idx.size
      new_uuid += build_uuid.join + "-"
  else
      new_uuid += build_uuid.join
    end
  end
  new_uuid
end

p uuid_creator