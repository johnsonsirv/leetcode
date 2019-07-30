#Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

#Note:

#The solution set must not contain duplicate triplets.
# @param {Integer[]} nums
# @return {Integer[][]}
require 'set'
def three_sum(nums)
    uniq_triplets = Set[]
    stop = nums.size - 3
    track = 0
    0.upto(stop) do |indx|
        first = nums[indx]
        j = indx + 1
        j.upto(nums.size - 2 ) do |indx2|
            second, third = nums[indx2], nums[indx2 + 1]
            _3sum = first + second + third
            if _3sum.zero?
              p "3sum #{_3sum}, first #{first}, second #{second}, third #{third}"
              if uniq_triplets.empty?
                uniq_triplets.add([first, second, third])
              else
                temp = uniq_triplets.to_a
                unless temp[track].include?(first) && temp[track].include?(second) && temp[track].include?(third)
                  uniq_triplets.add([first, second, third])
                  track += 1
                end
              end
            end
        end
    end
    uniq_triplets.to_a
end

def three_sum_2(nums)
  result = []
  sorted = nums.sort
  stop = sorted.size - 2
  # left, right = nil, nil
  (0...stop).each do |i|
    left = i + 1
    right = sorted.size - 1
    while left < right
      if sorted[i] + sorted[left] + sorted[right] == 0
        result << [sorted[i], sorted[left], sorted[right]]
        p "i #{i} left #{left}, right #{right}"
        break
      elsif  sorted[i] + sorted[left] + sorted[right] < 0
        left += 1
      else
        right -= 1
      end
    end
  end
  result
end

# p three_sum_2([-1, 0, 1, 2, -1, -4])
# p three_sum_2([-1,0,1,0])
# p three_sum_2([-4,-2,1,-5,-4,-4,4,-2,0,4,0,-2,3,1,-5,0])
p three_sum_2([-2,0,1,1,2])