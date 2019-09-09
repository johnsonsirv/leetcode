def find_duplicate(nums)
  nums_copy = nums
  c = nums
  nums.each do |n|
      p "removed #{nums_copy.pop}, current n- #{n}"
      # p nums_copy
      # p n if nums_copy.include? n
      p c
      p n
  end
end

find_duplicate([1,3,4,2,2])